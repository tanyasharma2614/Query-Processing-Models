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
  left_->Init();
  right_->Init();
}

bool NestedLoopJoinExecutor::Next(Tuple *tuple) { 
  Tuple t1;
  Tuple t2;
  while(left_->Next(&t1)){
    while(right_->Next(&t2)){
      *tuple=Tuple(t1);
      return true;
    }
  }
  return false;
  
}
