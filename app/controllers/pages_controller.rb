require 'time'
class PagesController < ApplicationController

  def home
    todays_poses = Pose.where('created_at <?',  DateTime.now.beginning_of_day)
    pose_ids = todays_poses.pluck(:id)
    day_today = Time.now.day
    todays_pose_id = pose_ids[day_today % pose_ids.count]
    @pose_today = Pose.find(todays_pose_id)
  end

  def about
  end

  def forum
  end
end
