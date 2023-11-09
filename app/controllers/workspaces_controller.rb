class WorkspacesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
      def index
        if params[:search] == nil
          @workspaces = params[:tag_id].present? ? Tag.find(params[:tag_id]).workspaces : Workspace.all
        elsif params[:search] == ''
          @workspaces = params[:tag_id].present? ? Tag.find(params[:tag_id]).workspaces : Workspace.all
        else
          @workspaces = Workspace.where("tag_name LIKE ?","%#{search}%")
        end
          @workspaces = @workspaces.page(params[:page]).per(10)
      end

      def new
        @workspace = Workspace.new
      end
    
      def create
        workspace = Workspace.new(workspace_params)
        
        workspace.user_id = current_user.id  #追記

        if workspace.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        workspace = Workspace.find(params[:id])
        workspace.destroy
        redirect_to action: :index
      end

      def show
        @workspace = Workspace.find(params[:id])
      end

      def adachi
        @workspace = Workspace.all
      end

      def arakawa
        @workspace = Workspace.all
      end

      def itabashi
        @workspace = Workspace.all
      end 

      def edogawa
        @workspace = Workspace.all
      end

      def ota
        @workspace = Workspace.all
      end

      def katsushika
        @workspace = Workspace.all
      end

      def kita
        @workspace = Workspace.all
      end

      def koto
        @workspace = Workspace.all
      end

      def shinagawa
        @workspace = Workspace.all
      end

      def shibuya
        @workspace = Workspace.all
      end

      def shinjuku
        @workspace = Workspace.all
      end

      def suginami
        @workspace = Workspace.all
      end

      def sumida
        @workspace = Workspace.all
      end

      def setagaya
        @workspace = Workspace.all
      end

      def taito
        @workspace = Workspace.all
      end

      def chuo
        @workspace = Workspace.all
      end

      def chiyoda
        @workspace = Workspace.all
      end

      def toshima
        @workspace = Workspace.all
      end

      def nakano
        @workspace = Workspace.all
      end

      def nerima
        @workspace = Workspace.all
      end

      def bunkyo
        @workspace = Workspace.all
      end

      def minato
        @workspace = Workspace.all
      end

      def meguro
        @workspace = Workspace.all
      end

      private
      def workspace_params
        params.require(:workspace).permit(:name, :monday, :mondaytime, :tuesday, :tuesdaytime, :wednesday, :wednesdaytime, :thursday,	:thursdaytime, :friday,	:fridaytime, :saturday,	:saturdaytime, :sunday,	:sundaytime, :homepage, :outlet, :wifi, :interview, :conversation, :smoking, :category, :image)
      end
  
  end