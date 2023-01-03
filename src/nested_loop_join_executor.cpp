#include "../include/nested_loop_join_executor.h"
#include "../include/seq_scan_executor.h"
#include <iostream>
using std::cout;
using std::endl;



NestedLoopJoinExecutor::NestedLoopJoinExecutor(
    AbstractExecutor *left_child_executor,
    AbstractExecutor *right_child_executor, const std::string join_key)
    : left_(left_child_executor),
      right_(right_child_executor),
      join_key_(join_key){};

void NestedLoopJoinExecutor::Init() {
  //left is inner table
  left_->Init();
  //right is outer table
  right_->Init();
}

bool NestedLoopJoinExecutor::Next(Tuple *tuple) { 
  Tuple t1;
  Tuple t2;

  if(flag==true){

    while(right_->Next(&t1)){
      if(join_key_.compare("val1")==0){
        if(t.val1==t1.val1){
          *tuple=t;
          return true;
        }
      }
      else if(join_key_.compare("val2")==0){
        if(t.val2==t1.val2){
          *tuple=t;
          return true;
        }
      }
      else if(join_key_.compare("id")==0){
        if(t.id==t1.id){
          *tuple=t;
          return true;
        }
      }
      else
        return false;
    }
    flag=false;
  }
  
  while(left_->Next(&t2)){
    t=t2;
    right_->Init();
    while(right_->Next(&t1)){
      if(join_key_.compare("val1")==0){
        if(t1.val1==t2.val1){
          *tuple=t;
          flag=true;
          return true;
        } 
      }
      else if(join_key_.compare("val2")==0){
        if(t1.val2==t2.val2){
          *tuple=t;
          flag=true;
          return true;
        } 
      }
      else if(join_key_.compare("id")==0){
        if(t1.id==t2.id){
          *tuple=t;
          flag=true;
          return true;
        } 
      }
      else
      return false;
    }
  }

  return false;
  
}
