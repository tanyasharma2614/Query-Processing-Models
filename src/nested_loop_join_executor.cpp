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
  if(join_key_.compare("val1")==0){
     while(right_->Next(&t1)){
      left_->Init();
      while(left_->Next(&t2)){
        *tuple=Tuple(t2);
        if(t1.val1==t2.val1)
        return true;
      }
    }
  }
   if(join_key_.compare("val2")==0){
      while(right_->Next(&t1)){
      left_->Init();
      while(left_->Next(&t2)){
        *tuple=Tuple(t2);
        if(t1.val2.compare(t2.val2)==0)
        return true;
      }
    }
  }
   if(join_key_.compare("id")==0){
      while(right_->Next(&t1)){
      left_->Init();
      while(left_->Next(&t2)){
        *tuple=Tuple(t2);
        if(t1.id==t2.id)
        return true;
      }
    }
  }
  return false;
  
}
