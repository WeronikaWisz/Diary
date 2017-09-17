class EntriesController < ApplicationController
    def index
    end

    def show
        @entry = Entry.find(params["id"])
    end

    def new
    end

    def create
       entry_params = params["entry"].permit("title", "contents")
       entry = Entry.create(entry_params)
       redirect_to(entry_path(entry))
    end

    def edit
      @entry = Entry.find(params["id"])
    end

    def destroy
    @entry = Entry.find(params["id"])
    @entry.destroy
    end

    def image
    @entry = Entry.find(params["id"])
    end
end