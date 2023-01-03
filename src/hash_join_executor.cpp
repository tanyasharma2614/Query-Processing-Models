#include "../include/hash_join_executor.h"
#include <iostream>
#include <vector>
using std::cout;
using std::endl;
using std::vector;

HashJoinExecutor::HashJoinExecutor(AbstractExecutor *left_child_executor,
                                   AbstractExecutor *right_child_executor,
                                   SimpleHashFunction *hash_fn)
    : left_(left_child_executor),
      right_(right_child_executor),
      hash_fn_(hash_fn) {}

void HashJoinExecutor::Init(){
  left_->Init();
  right_->Init();

  /*building hash table for outer table (left child executor)*/
  //build
  SimpleHashJoinHashTable newTable;
  ht=newTable;
  Tuple t1;
  while(left_->Next(&t1)){
    hash_t h1=hash_fn_->GetHash(t1);
    ht.Insert(h1,t1);

  }
  flag=true;
  i=0;
};

bool HashJoinExecutor::Next(Tuple *tuple) { 

  if(flag){
  /*iterating through inner table and checking for matching hashes with hash table*/
  //probe
  Tuple t2;

  while(right_->Next(&t2)){
    hash_t h2=hash_fn_->GetHash(t2);
    ht.GetValue(h2,&vt);

    if(!vt.empty()){
      //check for multiple matches 
      if(vt.size()>1){
        flag=false;
        i=1;
      }
      *tuple=vt.front();
      return true;
    }

  }

  return false;
  }

  //multiple matches
  else{
    i++;
    
    //find how many matches
    if(i==vt.size()){
      flag=true;
    }
    *tuple=Tuple(vt[i-1]);
    return true;
  }


}

