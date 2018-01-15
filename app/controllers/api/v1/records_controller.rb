module Api
	module V1
        class RecordsController < ApplicationController
            respond_to :json

            def index
               	@content = params['content']
				@question_id = params['question_id']
               	@paper_id = params['paper_id']
                @user_id = params['user_id']
                @paper = Paper.find(@paper_id)
                @question = Question.find(@question_id)
                @qs = @paper.survey.questions.ids
               

                @result = Result.new
                @result.update_attributes({'content' => @content,'question_id' => @question_id,'paper_id' => @paper_id,'user_id' => @user_id})

                if @result.save
                	if @question.id == @qs.last
                		redirect_to results_path(paper_id:@paper.id), notice:'分析完成，谢谢！'
                	else
                		redirect_to paper_path(id:@paper.id,question_id:@qs[@qs.index(@question_id.to_i)+1])
                	end
                else
                	redirect_to @paper,alert:'提交失败！'
                end 



                # respond_with params
            end
            
            def show


            end








       	end
    end
end