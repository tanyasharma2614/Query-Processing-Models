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
};

bool HashJoinExecutor::Next(Tuple *tuple) { 
  
  /*building hash table for outer table (left child executor)*/
  //build
  Tuple t1;
  while(left_->Next(&t1)){
    hash_t h1=hash_fn_->GetHash(t1);
    ht.Insert(h1,t1);

  }

  /*iterating through inner table and checking for matching hashes with hash table*/
  //probe
  Tuple t2;
  while(right_->Next(&t2)){
    vector<Tuple> vt;
    hash_t h2=hash_fn_->GetHash(t2);
    ht.GetValue(h2,&vt);
    *tuple=Tuple(t2);
    if(!vt.empty())
      return true;
  }

  return false;

}

