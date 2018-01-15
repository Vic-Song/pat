require 'test_helper'

class PapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paper = papers(:one)
  end

  test "should get index" do
    get papers_url
    assert_response :success
  end

  test "should get new" do
    get new_paper_url
    assert_response :success
  end

  test "should create paper" do
    assert_difference('Paper.count') do
      post papers_url, params: { paper: { authorName10: @paper.authorName10, authorName1: @paper.authorName1, authorName2: @paper.authorName2, authorName3: @paper.authorName3, authorName4: @paper.authorName4, authorName5: @paper.authorName5, authorName6: @paper.authorName6, authorName7: @paper.authorName7, authorName8: @paper.authorName8, authorName9: @paper.authorName9, comAddr: @paper.comAddr, comAuthor: @paper.comAuthor, journal: @paper.journal, pubYear: @paper.pubYear, survey_id: @paper.survey_id, title: @paper.title } }
    end

    assert_redirected_to paper_url(Paper.last)
  end

  test "should show paper" do
    get paper_url(@paper)
    assert_response :success
  end

  test "should get edit" do
    get edit_paper_url(@paper)
    assert_response :success
  end

  test "should update paper" do
    patch paper_url(@paper), params: { paper: { authorName10: @paper.authorName10, authorName1: @paper.authorName1, authorName2: @paper.authorName2, authorName3: @paper.authorName3, authorName4: @paper.authorName4, authorName5: @paper.authorName5, authorName6: @paper.authorName6, authorName7: @paper.authorName7, authorName8: @paper.authorName8, authorName9: @paper.authorName9, comAddr: @paper.comAddr, comAuthor: @paper.comAuthor, journal: @paper.journal, pubYear: @paper.pubYear, survey_id: @paper.survey_id, title: @paper.title } }
    assert_redirected_to paper_url(@paper)
  end

  test "should destroy paper" do
    assert_difference('Paper.count', -1) do
      delete paper_url(@paper)
    end

    assert_redirected_to papers_url
  end
end
