# frozen_string_literal: true

class SurveysController < ApplicationController
  before_action :reset_survey, only: :new, if: -> { session.key?(:survey_id) }

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.create(survey_params)
    if @survey.persisted?
      session[:survey_id] = @survey.id
      redirect_to check_answers_surveys_path
    else
      render :new
    end
  end

  def check_answers
    return redirect_to new_surveys_path unless session.key?(:survey_id)
    @survey = Survey.find(session.fetch(:survey_id))
  end

  private

  def survey_params
    params.permit(:ice_cream)
  end

  def reset_survey
    session.delete(:survey_id)
  end
end
