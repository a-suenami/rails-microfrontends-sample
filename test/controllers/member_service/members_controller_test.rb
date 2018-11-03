require 'test_helper'

class MemberService::MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_service_member = member_service_members(:one)
  end

  test "should get index" do
    get member_service_members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_service_member_url
    assert_response :success
  end

  test "should create member_service_member" do
    assert_difference('MemberService::Member.count') do
      post member_service_members_url, params: { member_service_member: { email: @member_service_member.email, name: @member_service_member.name } }
    end

    assert_redirected_to member_service_member_url(MemberService::Member.last)
  end

  test "should show member_service_member" do
    get member_service_member_url(@member_service_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_service_member_url(@member_service_member)
    assert_response :success
  end

  test "should update member_service_member" do
    patch member_service_member_url(@member_service_member), params: { member_service_member: { email: @member_service_member.email, name: @member_service_member.name } }
    assert_redirected_to member_service_member_url(@member_service_member)
  end

  test "should destroy member_service_member" do
    assert_difference('MemberService::Member.count', -1) do
      delete member_service_member_url(@member_service_member)
    end

    assert_redirected_to member_service_members_url
  end
end
