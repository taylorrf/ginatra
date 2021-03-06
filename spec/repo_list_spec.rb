current_path = File.expand_path(File.dirname(__FILE__))
require File.join(current_path, "spec_helper")

describe "Ginatra" do
  
  describe "RepoList" do

    before do
      @repo_list = Ginatra::RepoList.list
      @repo = Ginatra::RepoList.find("test")
    end

    it "should be an array of `Ginatra::Repo`s" do
      @repo_list.each { |r| r.should be_an_instance_of(Ginatra::Repo)}
    end

    it "should contain the test repo" do
      @repo_list.include?(@repo)
    end

  end
end
