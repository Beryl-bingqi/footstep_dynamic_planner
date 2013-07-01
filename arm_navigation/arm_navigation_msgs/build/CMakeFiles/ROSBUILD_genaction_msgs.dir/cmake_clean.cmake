FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/arm_navigation_msgs/msg"
  "../src/arm_navigation_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genaction_msgs"
  "../msg/MoveArmAction.msg"
  "../msg/MoveArmGoal.msg"
  "../msg/MoveArmActionGoal.msg"
  "../msg/MoveArmResult.msg"
  "../msg/MoveArmActionResult.msg"
  "../msg/MoveArmFeedback.msg"
  "../msg/MoveArmActionFeedback.msg"
  "../msg/MakeStaticCollisionMapAction.msg"
  "../msg/MakeStaticCollisionMapGoal.msg"
  "../msg/MakeStaticCollisionMapActionGoal.msg"
  "../msg/MakeStaticCollisionMapResult.msg"
  "../msg/MakeStaticCollisionMapActionResult.msg"
  "../msg/MakeStaticCollisionMapFeedback.msg"
  "../msg/MakeStaticCollisionMapActionFeedback.msg"
  "../msg/SyncPlanningSceneAction.msg"
  "../msg/SyncPlanningSceneGoal.msg"
  "../msg/SyncPlanningSceneActionGoal.msg"
  "../msg/SyncPlanningSceneResult.msg"
  "../msg/SyncPlanningSceneActionResult.msg"
  "../msg/SyncPlanningSceneFeedback.msg"
  "../msg/SyncPlanningSceneActionFeedback.msg"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genaction_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
