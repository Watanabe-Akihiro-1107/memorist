class MemosController < ApplicationController
	def index
		@memo = Memo.new
	end

	def create
		@memo = Memo.new(memo_params)
	end

	def delete
		@memo = Memo.find(params[:id])
		@memo.destroy
		redirect_to memos_path
	end
end
