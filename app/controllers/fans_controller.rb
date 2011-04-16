# encoding: utf-8

class FansController < ApplicationController

  before_filter :signed_in?, :only => :single

  def attributes
    ['email']
  end


  def create
    create! { single_fans_url(:id => resource.id) }
  end

  def single
    @fan = Fan.find(params[:id])
    @fan.has_downloaded = true
    @fan.save
  end

  private
  def signed_in?
    fan = resource.class.find(params[:id])
    redirect_to root_path if fan.has_downloaded?
  end

end
