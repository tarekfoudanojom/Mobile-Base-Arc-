// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(time) => "Blocked ${time} ago";

  static String m1(count) => "Delete ${count} messages";

  static String m2(error) => "Error sending message: ${error}";

  static String m3(error) => "Failed to resize and encode image: ${error}";

  static String m4(error) => "Failed to start recording: ${error}";

  static String m5(count, formattedCount) =>
      "${Intl.plural(count, zero: 'no followers', one: '${formattedCount} follower', other: '${formattedCount} followers')}";

  static String m6(count) => "Forward ${count} messages";

  static String m7(count) => " to ${count} chats";

  static String m8(name) => "${name} added to campaign";

  static String m9(name) => "${name} has been removed from draft";

  static String m10(minutes) => "Live • ${minutes} min remaining";

  static String m11(duration) => "Live Location (${duration} min)";

  static String m12(accuracy) => "Accurate to ${accuracy}m";

  static String m13(count) => "${count} messages deleted successfully";

  static String m14(count) => "${count} messages forwarded successfully";

  static String m15(messageCount, chatCount) =>
      "${messageCount} messages forwarded to ${chatCount} chats";

  static String m16(fileName) => "Opening ${fileName}...";

  static String m17(count) => "${count} selected messages";

  static String m18(MB, files) =>
      "Files size must be less than ${MB} MB, ${files}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AddressValidation":
            MessageLookupByLibrary.simpleMessage("Please enter the address"),
        "Analysis": MessageLookupByLibrary.simpleMessage("Analysis"),
        "Dont_receive_code":
            MessageLookupByLibrary.simpleMessage("Don\'t receive otp?"),
        "Hour": MessageLookupByLibrary.simpleMessage(" Hours"),
        "Proposals": MessageLookupByLibrary.simpleMessage("Proposals"),
        "Save": MessageLookupByLibrary.simpleMessage("save"),
        "Star_evaluation":
            MessageLookupByLibrary.simpleMessage("Star Evaluation"),
        "aboutMe": MessageLookupByLibrary.simpleMessage("About me"),
        "about_me": MessageLookupByLibrary.simpleMessage("About Me"),
        "about_use": MessageLookupByLibrary.simpleMessage("About Us"),
        "accept_offer": MessageLookupByLibrary.simpleMessage("Accept Offer"),
        "access_all_features":
            MessageLookupByLibrary.simpleMessage("To Access All Features"),
        "access_denied": MessageLookupByLibrary.simpleMessage("Access denied"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "account_details":
            MessageLookupByLibrary.simpleMessage("Account Details"),
        "account_first":
            MessageLookupByLibrary.simpleMessage("Please select account first"),
        "account_management_fee":
            MessageLookupByLibrary.simpleMessage("Account Management Fee"),
        "accounts": MessageLookupByLibrary.simpleMessage("Accounts"),
        "action_undo_successfully": MessageLookupByLibrary.simpleMessage(
            "Removed List restored successfully"),
        "active_bundle_services": MessageLookupByLibrary.simpleMessage(
            "Activate a unified price (package)"),
        "active_now": MessageLookupByLibrary.simpleMessage("Active Now"),
        "ad_details_editable_after_order": MessageLookupByLibrary.simpleMessage(
            "You can edit the ad details after placing the order."),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "add_Stars_influencers":
            MessageLookupByLibrary.simpleMessage("Add stars"),
        "add_account": MessageLookupByLibrary.simpleMessage("Add account"),
        "add_at_least_one_service_to_draft":
            MessageLookupByLibrary.simpleMessage(
                "Add at least one service to any influencer draft."),
        "add_attachment":
            MessageLookupByLibrary.simpleMessage("Add Attachment"),
        "add_attachments":
            MessageLookupByLibrary.simpleMessage("Add attachments"),
        "add_balance": MessageLookupByLibrary.simpleMessage("Add Balance"),
        "add_beneficiary":
            MessageLookupByLibrary.simpleMessage("Add Beneficiary"),
        "add_caption": MessageLookupByLibrary.simpleMessage("Add a caption..."),
        "add_company": MessageLookupByLibrary.simpleMessage("Add Company"),
        "add_custom_offer":
            MessageLookupByLibrary.simpleMessage("Add Custom Offer"),
        "add_extra_service":
            MessageLookupByLibrary.simpleMessage("Add Extra Service"),
        "add_file": MessageLookupByLibrary.simpleMessage("Add File"),
        "add_first_collaboration":
            MessageLookupByLibrary.simpleMessage("Add the first Collaboration"),
        "add_first_product":
            MessageLookupByLibrary.simpleMessage("Add the first Item"),
        "add_first_social_media":
            MessageLookupByLibrary.simpleMessage("Add the first Social Media"),
        "add_first_store":
            MessageLookupByLibrary.simpleMessage("Add the first Item"),
        "add_first_video_image": MessageLookupByLibrary.simpleMessage(
            "Add the first video or image"),
        "add_first_video_or_image": MessageLookupByLibrary.simpleMessage(
            "Add the first Video Or Image"),
        "add_influencers":
            MessageLookupByLibrary.simpleMessage("Add Influencers"),
        "add_list": MessageLookupByLibrary.simpleMessage("Add List"),
        "add_more_camp_stars": MessageLookupByLibrary.simpleMessage(
            "Select more recommended influencers"),
        "add_more_documents":
            MessageLookupByLibrary.simpleMessage("Add more documents"),
        "add_more_platforms":
            MessageLookupByLibrary.simpleMessage("Add more platforms"),
        "add_more_socials":
            MessageLookupByLibrary.simpleMessage("Add more socials media"),
        "add_more_stars":
            MessageLookupByLibrary.simpleMessage("Add More Stars"),
        "add_new_account":
            MessageLookupByLibrary.simpleMessage("Add New Account"),
        "add_new_bank": MessageLookupByLibrary.simpleMessage("Add new bank"),
        "add_new_card": MessageLookupByLibrary.simpleMessage("Add New Card"),
        "add_new_company":
            MessageLookupByLibrary.simpleMessage("Add New Company"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("Add new item"),
        "add_new_partner":
            MessageLookupByLibrary.simpleMessage("Add New partner"),
        "add_new_product":
            MessageLookupByLibrary.simpleMessage("Add New Product"),
        "add_new_store": MessageLookupByLibrary.simpleMessage("Add New Store"),
        "add_new_video_image":
            MessageLookupByLibrary.simpleMessage("Add New Video Or Image"),
        "add_note": MessageLookupByLibrary.simpleMessage("Add note"),
        "add_notes_for_client":
            MessageLookupByLibrary.simpleMessage("Add you notes here..."),
        "add_partner":
            MessageLookupByLibrary.simpleMessage("Add the first Partners"),
        "add_portfolio": MessageLookupByLibrary.simpleMessage("Add Portfolio"),
        "add_prices": MessageLookupByLibrary.simpleMessage("Add Prices"),
        "add_profile_pic":
            MessageLookupByLibrary.simpleMessage("Add a profile picture"),
        "add_social_media":
            MessageLookupByLibrary.simpleMessage("Add Social Media"),
        "add_socials": MessageLookupByLibrary.simpleMessage("Add your socials"),
        "add_stars": MessageLookupByLibrary.simpleMessage("Add Influencers"),
        "add_stars_to_start": MessageLookupByLibrary.simpleMessage(
            "Add influencers to start your campaign"),
        "add_stars_to_start_camp": MessageLookupByLibrary.simpleMessage(
            "Add Stars To Start Your Campaign"),
        "add_to_campaign":
            MessageLookupByLibrary.simpleMessage("Add to Campaign"),
        "add_to_new_campaign":
            MessageLookupByLibrary.simpleMessage("Add to New Campaign"),
        "add_to_other_campaign":
            MessageLookupByLibrary.simpleMessage("Add to other Campaign"),
        "add_up_to_fifty_videos_and_images":
            MessageLookupByLibrary.simpleMessage(
                "You can add up to 50 videos & Image"),
        "add_username":
            MessageLookupByLibrary.simpleMessage("add your username"),
        "add_video_image":
            MessageLookupByLibrary.simpleMessage("Add Video Or Image"),
        "add_video_or_image":
            MessageLookupByLibrary.simpleMessage("Add Video Or Image"),
        "add_you_tube_video":
            MessageLookupByLibrary.simpleMessage("Add YouTube Video"),
        "add_your_notes_here":
            MessageLookupByLibrary.simpleMessage("Add your notes here..."),
        "added": MessageLookupByLibrary.simpleMessage("added"),
        "added_successfully":
            MessageLookupByLibrary.simpleMessage("Added successfully"),
        "addition_to_campaign":
            MessageLookupByLibrary.simpleMessage("Add to Campaign"),
        "additional": MessageLookupByLibrary.simpleMessage("Additional"),
        "additional_information": MessageLookupByLibrary.simpleMessage(
            "for additional information about what is and isn\'t permitted on nojom."),
        "additional_sections":
            MessageLookupByLibrary.simpleMessage("Additional Sections"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "ads": MessageLookupByLibrary.simpleMessage("Ads"),
        "after_verification_you_can_start_direct_conversations_with_influencers_and_discuss_your_marketing_campaign_details":
            MessageLookupByLibrary.simpleMessage(
                "After verification, you can start direct conversations with influencers and discuss your marketing campaign details."),
        "age": MessageLookupByLibrary.simpleMessage("Age"),
        "age_15_20": MessageLookupByLibrary.simpleMessage("15-20 years"),
        "age_21_25": MessageLookupByLibrary.simpleMessage("21-25 years"),
        "age_26_35": MessageLookupByLibrary.simpleMessage("26-35 years"),
        "age_36_45": MessageLookupByLibrary.simpleMessage("36-45 years"),
        "age_46_plus":
            MessageLookupByLibrary.simpleMessage("46 years and above"),
        "age_group": MessageLookupByLibrary.simpleMessage("Age Group"),
        "age_group_of_target_audience":
            MessageLookupByLibrary.simpleMessage("Target Audience Age Group"),
        "age_prompt": MessageLookupByLibrary.simpleMessage("How old are you?"),
        "age_selection": MessageLookupByLibrary.simpleMessage("Select Age"),
        "agency": MessageLookupByLibrary.simpleMessage("Agency"),
        "agency_email": MessageLookupByLibrary.simpleMessage("Agency Email"),
        "agency_info": MessageLookupByLibrary.simpleMessage("Agency Info"),
        "agency_name": MessageLookupByLibrary.simpleMessage("Agency Name"),
        "agency_tax": MessageLookupByLibrary.simpleMessage("Agency Tax"),
        "aiAnalyzingLink": MessageLookupByLibrary.simpleMessage(
            "AI is analyzing the link and extracting the necessary information to create your campaign data."),
        "ai_add_stars_hint": MessageLookupByLibrary.simpleMessage(
            "The Ai in Nojom will recommend the most suitable influencers for your campaign based on its details. add them and start now!"),
        "ai_analyzes_brand_and_goals": MessageLookupByLibrary.simpleMessage(
            "AI analyzes your brand and goals to suggest the ideal influencers for your advertising campaign"),
        "ai_assistance_message": MessageLookupByLibrary.simpleMessage(
            "Enter your website link or social media account, and Nojom\'s AI will automatically fill in the data for you. You can view and edit it as you wish before creating the campaign."),
        "ai_description": MessageLookupByLibrary.simpleMessage(
            "Artificial intelligence makes it easier to create your marketing campaign and suggests the most suitable influencers for your business field."),
        "ai_makes_it_easy_to_create_your_marketing_campaign_and_suggests_the_most_suitable_stars_for_your_business_field":
            MessageLookupByLibrary.simpleMessage(
                "AI makes it easy to create your marketing campaign and suggests the most suitable stars for your business field."),
        "ai_star_suggestion_desc": MessageLookupByLibrary.simpleMessage(
            "These influencers are suggested by AI based on your campaign data to achieve the best match."),
        "ai_that_simplifies_every_step": MessageLookupByLibrary.simpleMessage(
            "AI that simplifies every step"),
        "albums": MessageLookupByLibrary.simpleMessage("Albums"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "allPlatForm": MessageLookupByLibrary.simpleMessage("All platform"),
        "all_campaigns": MessageLookupByLibrary.simpleMessage("All Campaign"),
        "all_cities": MessageLookupByLibrary.simpleMessage("All cities"),
        "all_countries": MessageLookupByLibrary.simpleMessage("All countries"),
        "all_tab": MessageLookupByLibrary.simpleMessage("All"),
        "allow_my_location_access":
            MessageLookupByLibrary.simpleMessage("Allow to access my location"),
        "allow_notifications":
            MessageLookupByLibrary.simpleMessage("Allow Notifications"),
        "already_released_payment": MessageLookupByLibrary.simpleMessage(
            "already released the payment."),
        "already_used": MessageLookupByLibrary.simpleMessage("Already used"),
        "amount_to_withdraw":
            MessageLookupByLibrary.simpleMessage("Amount to Withdraw"),
        "amount_will_calculated_when_adding_services":
            MessageLookupByLibrary.simpleMessage(
                "The total amount is shown when adding services for any influencer."),
        "analysis": MessageLookupByLibrary.simpleMessage("Analysis"),
        "analyst_review": MessageLookupByLibrary.simpleMessage(
            "During the next 5 - 15 days our analysts will be reverting the information you provided if we are able to partner with you will contact you for additional information"),
        "and_write_review":
            MessageLookupByLibrary.simpleMessage("and write a review "),
        "answer_5_questions": MessageLookupByLibrary.simpleMessage(
            "Answer 5 questions and get 2 SAR today plus a chance to win 100 SAR gist card"),
        "any_number": MessageLookupByLibrary.simpleMessage("Any Number"),
        "any_price": MessageLookupByLibrary.simpleMessage("Any Price"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "app_store": MessageLookupByLibrary.simpleMessage("App Store"),
        "apple": MessageLookupByLibrary.simpleMessage("Apple"),
        "apple_pay": MessageLookupByLibrary.simpleMessage("Apple Pay"),
        "apple_store": MessageLookupByLibrary.simpleMessage("App Store"),
        "application": MessageLookupByLibrary.simpleMessage("Application"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "appropriate_platforms_for_campaign":
            MessageLookupByLibrary.simpleMessage(
                "Appropriate Platforms for the Campaign"),
        "approval_confirmation": MessageLookupByLibrary.simpleMessage(
            "By approving this campaign, you confirm that you have received the order, and the payment will be released to the influencer. If no action is taken within 5 days from the delivery date, the order will be automatically approved, and the payment will be transferred to the influencer to ensure smooth operations."),
        "approved": MessageLookupByLibrary.simpleMessage("Approved"),
        "approved_request": MessageLookupByLibrary.simpleMessage("Approved"),
        "approved_title": MessageLookupByLibrary.simpleMessage("Approved"),
        "april": MessageLookupByLibrary.simpleMessage("April"),
        "ar_name": MessageLookupByLibrary.simpleMessage("Arabic Name"),
        "arabic_name_validation":
            MessageLookupByLibrary.simpleMessage("Should be arabic letters"),
        "archive": MessageLookupByLibrary.simpleMessage("Archive"),
        "archivedChats": MessageLookupByLibrary.simpleMessage("Archived Chats"),
        "are_you_influencer":
            MessageLookupByLibrary.simpleMessage("Are you a Star?"),
        "are_you_sure": MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "artificialIntelligence":
            MessageLookupByLibrary.simpleMessage("Artificial Intelligence"),
        "asset_deleted_successfully":
            MessageLookupByLibrary.simpleMessage("Asset deleted successfully"),
        "attach_file": MessageLookupByLibrary.simpleMessage("Attach File"),
        "attach_proof": MessageLookupByLibrary.simpleMessage("Attach proof"),
        "attach_screenshot":
            MessageLookupByLibrary.simpleMessage("Submit screenshot"),
        "attached_notes": MessageLookupByLibrary.simpleMessage("Notes"),
        "attachment": MessageLookupByLibrary.simpleMessage("Attachment"),
        "attachment_file": MessageLookupByLibrary.simpleMessage("📎 File"),
        "attachment_for_star":
            MessageLookupByLibrary.simpleMessage("Attachments for the Star"),
        "attachment_general":
            MessageLookupByLibrary.simpleMessage("📎 Attachment"),
        "attachment_photo": MessageLookupByLibrary.simpleMessage("📷 Photo"),
        "attachment_uploaded": MessageLookupByLibrary.simpleMessage(
            "Attachment uploaded successfully"),
        "attachment_video": MessageLookupByLibrary.simpleMessage("🎥 Video"),
        "attachment_voice_message":
            MessageLookupByLibrary.simpleMessage("🎤 Voice message"),
        "attachments": MessageLookupByLibrary.simpleMessage("Attachments"),
        "attachments_request_ad":
            MessageLookupByLibrary.simpleMessage("Attachments"),
        "attachments_shared_successfully": MessageLookupByLibrary.simpleMessage(
            "Attachments shared successfully"),
        "attachments_will_appear_here": MessageLookupByLibrary.simpleMessage(
            "Attachments will appear here once the influencer uploads them."),
        "audience": MessageLookupByLibrary.simpleMessage("Audience"),
        "audience_authenticity":
            MessageLookupByLibrary.simpleMessage("Audience Authenticity"),
        "audience_authenticity_description": MessageLookupByLibrary.simpleMessage(
            "Audience Quality Score (AQS) is a composite metric from 1 to 100 that defines the overall quality of an influencer’s audience.\nIt depends on several factors such as: engagement rate, audience quality, follower/following growth, and interaction credibility.\nThe higher the AQS value, the better the quality."),
        "audience_countries":
            MessageLookupByLibrary.simpleMessage("Followers Countries"),
        "audience_credibility":
            MessageLookupByLibrary.simpleMessage("Audience credibility"),
        "audience_credibility_description": MessageLookupByLibrary.simpleMessage(
            "Shows the percentage of real audience, based on the ratio of real people and influencers in the account. The higher the ratio, the more credible the audience. If a large part of the audience consists of mass-following or suspicious accounts, the audience is considered unreliable."),
        "audience_quality":
            MessageLookupByLibrary.simpleMessage("Audience Quality"),
        "audience_quality_desc": MessageLookupByLibrary.simpleMessage(
            "The percentage of real people and influencers among the influencer’s followers."),
        "audience_quality_description": MessageLookupByLibrary.simpleMessage(
            "The percentage of real people and influencers among the influencer’s followers."),
        "audience_quality_score": MessageLookupByLibrary.simpleMessage(
            "Audience Quality Score (AQS)"),
        "audience_quality_score_criteria_title":
            MessageLookupByLibrary.simpleMessage(
                "Audience Quality Score Criteria"),
        "audience_reachability":
            MessageLookupByLibrary.simpleMessage("Audience Reachability"),
        "audience_reachability1":
            MessageLookupByLibrary.simpleMessage("Audience Reachability"),
        "audience_reachability_description": MessageLookupByLibrary.simpleMessage(
            "Users following fewer than 1500 accounts are considered reachable and often see most of the influencer’s posts. Those following many accounts are less likely to see the influencer’s content among thousands of posts, making reachability lower."),
        "audience_sentiments":
            MessageLookupByLibrary.simpleMessage("Followers Sentiments"),
        "audience_trustworthiness":
            MessageLookupByLibrary.simpleMessage("Audience Trustworthiness"),
        "audience_trustworthiness_description":
            MessageLookupByLibrary.simpleMessage(
                "Audience trustworthiness means having real people and influencers in the account, while excluding suspicious accounts and mass-follow accounts. It indicates the percentage of genuine audience and depends on the ratio of real people and influencers. The higher their number, the greater the trustworthiness of the audience. If a large portion of the audience consists of suspicious or mass-follow accounts, the audience is considered unreliable."),
        "audience_type": MessageLookupByLibrary.simpleMessage("Followers Type"),
        "audio_error": MessageLookupByLibrary.simpleMessage("Error!!"),
        "august": MessageLookupByLibrary.simpleMessage("August"),
        "authenticate_message": MessageLookupByLibrary.simpleMessage(
            "Please login or register to collaborate, view profiles, chat and more..."),
        "auto_filled_information_note": MessageLookupByLibrary.simpleMessage(
            "This information has been automatically filled by Nojoom AI based on the available data from the link you provided. You can edit any option or modify any detail to better suit your needs."),
        "auto_generated_description_note": MessageLookupByLibrary.simpleMessage(
            "This description was automatically generated by artificial intelligence based on the information you entered. You can edit it manually or click \'Reword\' to create a new description with different wording."),
        "available_balance":
            MessageLookupByLibrary.simpleMessage("Available Balance"),
        "available_campaign":
            MessageLookupByLibrary.simpleMessage("Available Campaigns"),
        "average": MessageLookupByLibrary.simpleMessage("Average"),
        "avg_views_per_post":
            MessageLookupByLibrary.simpleMessage("Avg. Views per Post"),
        "away_from": MessageLookupByLibrary.simpleMessage("away from"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "bad_experience": MessageLookupByLibrary.simpleMessage(
            "I have bad experience using the App"),
        "balance": MessageLookupByLibrary.simpleMessage(" balance"),
        "bank": MessageLookupByLibrary.simpleMessage("Bank"),
        "bankName": MessageLookupByLibrary.simpleMessage("Bank name"),
        "bank_account": MessageLookupByLibrary.simpleMessage("Bank Account"),
        "bank_deleted_success":
            MessageLookupByLibrary.simpleMessage("Bank deleted successfully"),
        "bank_name": MessageLookupByLibrary.simpleMessage("Bank Name"),
        "bank_updated_success":
            MessageLookupByLibrary.simpleMessage("Bank updated successfully"),
        "basic_account": MessageLookupByLibrary.simpleMessage("Basic Account"),
        "before_reporting": MessageLookupByLibrary.simpleMessage(
            "before reporting this profile.!"),
        "beneficiary_name":
            MessageLookupByLibrary.simpleMessage("Beneficiary name"),
        "better_alt": MessageLookupByLibrary.simpleMessage(
            "I found a better alternative"),
        "bid": MessageLookupByLibrary.simpleMessage("bid"),
        "bid_accepted": MessageLookupByLibrary.simpleMessage("Bid accepted"),
        "bid_description": MessageLookupByLibrary.simpleMessage(
            "Please Enter bid Description"),
        "biddings": MessageLookupByLibrary.simpleMessage("Biddings"),
        "billing_address":
            MessageLookupByLibrary.simpleMessage("Billing Address"),
        "birthDate": MessageLookupByLibrary.simpleMessage("BirthDate"),
        "birth_day": MessageLookupByLibrary.simpleMessage("Birthday"),
        "blackmail":
            MessageLookupByLibrary.simpleMessage("Blackmailing and harassment"),
        "blockAndReport": MessageLookupByLibrary.simpleMessage("block&Report"),
        "blockedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Blocked successfully"),
        "blocked_time_ago": m0,
        "blue": MessageLookupByLibrary.simpleMessage("Blue"),
        "blue_level_reward": MessageLookupByLibrary.simpleMessage(
            "1200 points for reaching Blue level"),
        "boost_your_collaboration": MessageLookupByLibrary.simpleMessage(
            "Boost your collaboration opportunities by adding one of your successful campaign video to your portfolio"),
        "brand": MessageLookupByLibrary.simpleMessage("Brand"),
        "brand_name": MessageLookupByLibrary.simpleMessage("Brand Name"),
        "brand_only": MessageLookupByLibrary.simpleMessage("Brand Only"),
        "brand_profile_desc": MessageLookupByLibrary.simpleMessage(
            "Brand profile is visible to brands only,Use this link as your brands link on all platforms"),
        "brands_login":
            MessageLookupByLibrary.simpleMessage("Login for Brands"),
        "brands_only": MessageLookupByLibrary.simpleMessage("brands only"),
        "brief": MessageLookupByLibrary.simpleMessage("Brief"),
        "brief_description_of_influencer":
            MessageLookupByLibrary.simpleMessage("Details"),
        "budget": MessageLookupByLibrary.simpleMessage("Budget"),
        "budget_suggestion_note": MessageLookupByLibrary.simpleMessage(
            "This budget has been automatically suggested, and you can adjust it according to your plan and goals."),
        "business": MessageLookupByLibrary.simpleMessage("Business"),
        "business_email":
            MessageLookupByLibrary.simpleMessage("Business Email"),
        "by_clicking_continue_you_agree_to":
            MessageLookupByLibrary.simpleMessage(
                "By clicking continue, you agree to"),
        "cRN": MessageLookupByLibrary.simpleMessage(
            "Commercial\n Registration Number"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "campaign": MessageLookupByLibrary.simpleMessage("Campaign"),
        "campaignData": MessageLookupByLibrary.simpleMessage("Campaign Data"),
        "campaignDataReady": MessageLookupByLibrary.simpleMessage(
            "Your campaign data is ready ✨"),
        "campaignDetails":
            MessageLookupByLibrary.simpleMessage("Campaign Details"),
        "campaignFiles": MessageLookupByLibrary.simpleMessage("Campaign Files"),
        "campaignId": MessageLookupByLibrary.simpleMessage("Campaign Id"),
        "campaignStatus":
            MessageLookupByLibrary.simpleMessage("Campaign Status"),
        "campaignTitle": MessageLookupByLibrary.simpleMessage("Campaign Title"),
        "campaign_already_participated": MessageLookupByLibrary.simpleMessage(
            "The influencer within this campaign cannot be added or removed"),
        "campaign_attachments":
            MessageLookupByLibrary.simpleMessage("Campaign Attachments"),
        "campaign_attachments_supported_formats":
            MessageLookupByLibrary.simpleMessage(
                "Supported Files: images Videos, PDF, Files"),
        "campaign_closed":
            MessageLookupByLibrary.simpleMessage("Campaign is closed now "),
        "campaign_completion": MessageLookupByLibrary.simpleMessage(
            "Once your campaign is completed and approved, the influencer will be able to withdraw the amount"),
        "campaign_cost": MessageLookupByLibrary.simpleMessage("Campaign cost"),
        "campaign_created": MessageLookupByLibrary.simpleMessage(
            "Campaign created successfully"),
        "campaign_data": MessageLookupByLibrary.simpleMessage("Campaign Data"),
        "campaign_date":
            MessageLookupByLibrary.simpleMessage("Campaign Date(optional)"),
        "campaign_describe":
            MessageLookupByLibrary.simpleMessage("Campaign Description"),
        "campaign_details":
            MessageLookupByLibrary.simpleMessage("Campaign Details"),
        "campaign_history": MessageLookupByLibrary.simpleMessage("History"),
        "campaign_id_not_found":
            MessageLookupByLibrary.simpleMessage("Campaign ID not found"),
        "campaign_info": MessageLookupByLibrary.simpleMessage(
            "The amount has been successfully deposited into the Nojom platform, but will not be transferred directly to the star. After the star submits the requested campaign, you can review the work and approve the transfer of the amount. If no action is taken within 5 days from the date of the submission, the campaign will be approved and the amount will be transferred to the influencer automatically to ensure smooth operations."),
        "campaign_objectives":
            MessageLookupByLibrary.simpleMessage("Campaign Objective"),
        "campaign_publish_date": MessageLookupByLibrary.simpleMessage("Date"),
        "campaign_publish_time": MessageLookupByLibrary.simpleMessage("Time"),
        "campaign_status":
            MessageLookupByLibrary.simpleMessage("Campaign Status"),
        "campaign_title":
            MessageLookupByLibrary.simpleMessage("Campaign title *"),
        "campaigns": MessageLookupByLibrary.simpleMessage("Campaigns"),
        "campaigns_overview_message": MessageLookupByLibrary.simpleMessage(
            "Here, you will find all your campaigns as soon as they are created. You can submit a new campaign and view the details of current and past campaigns."),
        "can_not_pace_bid": MessageLookupByLibrary.simpleMessage(
            "You can not place bid for this campaign"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancel_bid": MessageLookupByLibrary.simpleMessage("Cancel Bid"),
        "cancel_this_bid":
            MessageLookupByLibrary.simpleMessage("Cancel this bid?"),
        "cancel_withdraw":
            MessageLookupByLibrary.simpleMessage("Cancel this withdraw"),
        "cannot_change_quantity_in_bundle_mode":
            MessageLookupByLibrary.simpleMessage(
                "The unified price is enabled; you cannot choose services."),
        "cannot_open_file":
            MessageLookupByLibrary.simpleMessage("Cannot open file"),
        "cannot_open_file_with_external_app":
            MessageLookupByLibrary.simpleMessage(
                "Cannot open file with external app"),
        "cannot_share_file":
            MessageLookupByLibrary.simpleMessage("Cannot share file"),
        "card": MessageLookupByLibrary.simpleMessage("Credit Card"),
        "card_number": MessageLookupByLibrary.simpleMessage("Card number"),
        "career": MessageLookupByLibrary.simpleMessage("Career"),
        "category": MessageLookupByLibrary.simpleMessage("Category"),
        "category_and_tags":
            MessageLookupByLibrary.simpleMessage("Category & Tags "),
        "category_score":
            MessageLookupByLibrary.simpleMessage("Category Score"),
        "ceo_name": MessageLookupByLibrary.simpleMessage("Ahmed Alsenan"),
        "change": MessageLookupByLibrary.simpleMessage("Change"),
        "change_logo": MessageLookupByLibrary.simpleMessage("Change Logo"),
        "change_password":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "chatWithClient":
            MessageLookupByLibrary.simpleMessage("Chat with your client"),
        "chat_with_us": MessageLookupByLibrary.simpleMessage("Chat with us"),
        "chats": MessageLookupByLibrary.simpleMessage("Chats"),
        "chatting_star_messages_displayed_here":
            MessageLookupByLibrary.simpleMessage(
                "After chatting with the star, all of their messages will be displayed here."),
        "check_your_domain":
            MessageLookupByLibrary.simpleMessage("Please check your domain"),
        "check_your_email":
            MessageLookupByLibrary.simpleMessage("Check Your Email"),
        "choose_account":
            MessageLookupByLibrary.simpleMessage("Choose account"),
        "choose_profile_image":
            MessageLookupByLibrary.simpleMessage("Choose Profile Image"),
        "cities": MessageLookupByLibrary.simpleMessage("Cities"),
        "cities_selected":
            MessageLookupByLibrary.simpleMessage("cities selected"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "claim_link":
            MessageLookupByLibrary.simpleMessage("Claim your nojom link"),
        "clear": MessageLookupByLibrary.simpleMessage("Clear"),
        "clear_all": MessageLookupByLibrary.simpleMessage("Clear All"),
        "clear_chat": MessageLookupByLibrary.simpleMessage("Clear Chat"),
        "click_link": MessageLookupByLibrary.simpleMessage("Click on link "),
        "click_link_desc": MessageLookupByLibrary.simpleMessage(
            "Find the links above, click a site to write a review"),
        "click_link_title":
            MessageLookupByLibrary.simpleMessage("Click on the link"),
        "click_link_to_open":
            MessageLookupByLibrary.simpleMessage("click here to open link "),
        "client": MessageLookupByLibrary.simpleMessage("Client"),
        "client_accept_deposit": MessageLookupByLibrary.simpleMessage(
            "Once the client accept you, he will deposit money and release payment when you complete his campaign."),
        "client_pay": MessageLookupByLibrary.simpleMessage("Client pay"),
        "client_release":
            MessageLookupByLibrary.simpleMessage("Client release"),
        "client_release_deposit": MessageLookupByLibrary.simpleMessage(
            "Client has already released deposit.\n"),
        "clients": MessageLookupByLibrary.simpleMessage("Clients"),
        "clients_files":
            MessageLookupByLibrary.simpleMessage("Client\'s Files"),
        "clients_will_appear_here":
            MessageLookupByLibrary.simpleMessage("Clients will appear here"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "close_campaign":
            MessageLookupByLibrary.simpleMessage("Close Campaign"),
        "close_campaign_button_cont":
            MessageLookupByLibrary.simpleMessage("Yes, Close this campaign"),
        "close_campaign_confirm_message":
            MessageLookupByLibrary.simpleMessage("Close this Campaign?"),
        "closedCampaigns":
            MessageLookupByLibrary.simpleMessage("Closed Campaigns"),
        "code_not_received":
            MessageLookupByLibrary.simpleMessage("Haven\'t received a code ?"),
        "collaborated_with":
            MessageLookupByLibrary.simpleMessage("Collaborated With"),
        "collaborations":
            MessageLookupByLibrary.simpleMessage("Collaborations"),
        "comment": MessageLookupByLibrary.simpleMessage("Comment"),
        "comments": MessageLookupByLibrary.simpleMessage("Comments"),
        "comments_avg_per_post":
            MessageLookupByLibrary.simpleMessage("Comments Avg. per Post"),
        "commercial_or_freelance_number": MessageLookupByLibrary.simpleMessage(
            "Commercial registration or freelance document number"),
        "commercial_register_number":
            MessageLookupByLibrary.simpleMessage("Commercial Register Number"),
        "commercial_registration":
            MessageLookupByLibrary.simpleMessage("Commercial Register"),
        "commercial_registration_or_freelance_document":
            MessageLookupByLibrary.simpleMessage(
                "Commercial registration or freelance document"),
        "community_guidelines":
            MessageLookupByLibrary.simpleMessage("Community Guidelines"),
        "company_link": MessageLookupByLibrary.simpleMessage(
            "Link that represents your company"),
        "company_name": MessageLookupByLibrary.simpleMessage("Company Name"),
        "company_name_as_in_record": MessageLookupByLibrary.simpleMessage(
            "Company name as in the commercial record"),
        "company_size": MessageLookupByLibrary.simpleMessage("Company Size"),
        "company_type": MessageLookupByLibrary.simpleMessage("Company type"),
        "compatibility_description": MessageLookupByLibrary.simpleMessage(
            "This score represents how suitable this influencer is for you, based on criteria related to their audience and account performance."),
        "compatibility_score":
            MessageLookupByLibrary.simpleMessage("Compatibility Score"),
        "compatibility_score_description": MessageLookupByLibrary.simpleMessage(
            "This score represents how well this influencer matches you, based on a set of criteria related to their audience and account performance."),
        "compatibility_score_details": MessageLookupByLibrary.simpleMessage(
            "Compatibility Score Details with this Influencer"),
        "complete": MessageLookupByLibrary.simpleMessage("Complete"),
        "complete_data_submit_verification":
            MessageLookupByLibrary.simpleMessage(
                "Please complete your data and submit for verification."),
        "complete_order":
            MessageLookupByLibrary.simpleMessage("Complete Order"),
        "complete_profile": MessageLookupByLibrary.simpleMessage(
            "Finally completing your profile until it becomes 100% will make it faster and easier for us to start on your application."),
        "complete_your_data":
            MessageLookupByLibrary.simpleMessage("Complete Your data"),
        "completed": MessageLookupByLibrary.simpleMessage("Completed"),
        "completedCampaigns":
            MessageLookupByLibrary.simpleMessage("Completed Campaigns"),
        "completed_campaign":
            MessageLookupByLibrary.simpleMessage("Completed Campaign"),
        "completed_request": MessageLookupByLibrary.simpleMessage("Completed"),
        "completed_title": MessageLookupByLibrary.simpleMessage("Completed"),
        "completion_message": MessageLookupByLibrary.simpleMessage(
            "I\'ve completed the work you required and attached the necessary documents..."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmUnBlock": MessageLookupByLibrary.simpleMessage(
            "Are you sure want to unBlock this user"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter the password identical"),
        "confirm_cancel_bid":
            MessageLookupByLibrary.simpleMessage("Yes, Cancel this bidding"),
        "confirm_del_account": MessageLookupByLibrary.simpleMessage(
            "Are you sure to permanently delete your account ?"),
        "confirm_delete": MessageLookupByLibrary.simpleMessage("Yes, Delete!"),
        "confirm_delete_txt": MessageLookupByLibrary.simpleMessage(
            "You\'re going to delete the "),
        "confirm_deleting": MessageLookupByLibrary.simpleMessage(
            "Please confirm your decision before proceeding."),
        "confirm_message": MessageLookupByLibrary.simpleMessage(
            "You have successfully reset your\n password. Please use your new\n password when logging in."),
        "confirm_new_password":
            MessageLookupByLibrary.simpleMessage("Confirm New Password"),
        "confirm_order_approval":
            MessageLookupByLibrary.simpleMessage("Confirm Order Approval"),
        "confirm_save_txt": MessageLookupByLibrary.simpleMessage(
            "Would you like to save before exiting?"),
        "confirm_sign_out":
            MessageLookupByLibrary.simpleMessage("Are you sure you want to"),
        "confirm_verification_code":
            MessageLookupByLibrary.simpleMessage("Confirm verification code"),
        "confirmationReportsText": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to block this User?"),
        "confirmation_prompt":
            MessageLookupByLibrary.simpleMessage("Are you sure you want to"),
        "congratulations":
            MessageLookupByLibrary.simpleMessage("Congratulations"),
        "connect": MessageLookupByLibrary.simpleMessage("Chat"),
        "connect_description": MessageLookupByLibrary.simpleMessage(
            "After verification, you can start direct chats with influencers and discuss your campaign details."),
        "connect_with_influencers":
            MessageLookupByLibrary.simpleMessage("Connect with influencers"),
        "connectionSource": MessageLookupByLibrary.simpleMessage("Contacts"),
        "consumers": MessageLookupByLibrary.simpleMessage("Consumers"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "contact_name": MessageLookupByLibrary.simpleMessage("Contact Name"),
        "contact_use": MessageLookupByLibrary.simpleMessage("Contact Us"),
        "contact_with_star":
            MessageLookupByLibrary.simpleMessage("Connect with Star"),
        "continue_editing":
            MessageLookupByLibrary.simpleMessage("Continue Editing"),
        "contract": MessageLookupByLibrary.simpleMessage("Contract"),
        "contract_canceled":
            MessageLookupByLibrary.simpleMessage("Contract canceled"),
        "contract_date": MessageLookupByLibrary.simpleMessage("Contract Date"),
        "cooperating_with_companies": MessageLookupByLibrary.simpleMessage(
            "Cooperating with companies enhances opportunities and profile attractiveness."),
        "cooperations": MessageLookupByLibrary.simpleMessage("cooperations"),
        "copied": MessageLookupByLibrary.simpleMessage("Copied successfully"),
        "copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "copy_link": MessageLookupByLibrary.simpleMessage("Link Copied"),
        "countries": MessageLookupByLibrary.simpleMessage("Countries"),
        "country": MessageLookupByLibrary.simpleMessage("Country"),
        "coupon": MessageLookupByLibrary.simpleMessage("Coupon(option)"),
        "cr_number": MessageLookupByLibrary.simpleMessage(
            "Commercial Registration Number"),
        "cr_number_hint": MessageLookupByLibrary.simpleMessage(
            "The commercial registration or establishment number consists of 10 digits, often starting with 1 or 7, and is issued by the Ministry of Commerce."),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "createYourCampaignThrough": MessageLookupByLibrary.simpleMessage(
            "Create your campaign through"),
        "create_account":
            MessageLookupByLibrary.simpleMessage("Create Account"),
        "create_and_add": MessageLookupByLibrary.simpleMessage("Create & Add"),
        "create_campaign":
            MessageLookupByLibrary.simpleMessage("Create Campaign"),
        "create_campaign_in_small":
            MessageLookupByLibrary.simpleMessage("Create"),
        "create_campaign_with_ai": MessageLookupByLibrary.simpleMessage(
            "Create your campaign with AI"),
        "create_new_account":
            MessageLookupByLibrary.simpleMessage("Create New Account"),
        "create_offer": MessageLookupByLibrary.simpleMessage("Create Offer"),
        "create_star_account":
            MessageLookupByLibrary.simpleMessage("Create your star account"),
        "create_your_ai_campaign":
            MessageLookupByLibrary.simpleMessage("Create your AI campaign"),
        "creation_date": MessageLookupByLibrary.simpleMessage("Creation Date"),
        "creator": MessageLookupByLibrary.simpleMessage("Creator"),
        "credibility": MessageLookupByLibrary.simpleMessage("Credibility"),
        "crn_already_verified": MessageLookupByLibrary.simpleMessage(
            "You already verified cr number"),
        "currency": MessageLookupByLibrary.simpleMessage("Currency"),
        "current_campaigns":
            MessageLookupByLibrary.simpleMessage("Current campaigns"),
        "current_location_message":
            MessageLookupByLibrary.simpleMessage("Current Location"),
        "current_location_shared":
            MessageLookupByLibrary.simpleMessage("Current location shared"),
        "current_password":
            MessageLookupByLibrary.simpleMessage("Current Password"),
        "current_score":
            MessageLookupByLibrary.simpleMessage("Current Trust Score"),
        "custom": MessageLookupByLibrary.simpleMessage("Custom"),
        "custom_invitation_link":
            MessageLookupByLibrary.simpleMessage("Your custom invitation link"),
        "custom_link": MessageLookupByLibrary.simpleMessage("Custom Link"),
        "custom_offer": MessageLookupByLibrary.simpleMessage("Custom Offer"),
        "custom_offer_exists": MessageLookupByLibrary.simpleMessage(
            "A custom offer already exists for this service"),
        "custom_service_other":
            MessageLookupByLibrary.simpleMessage("Other Custom Service"),
        "customer_support":
            MessageLookupByLibrary.simpleMessage("Customer Support"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("dark mode"),
        "data_privacy": MessageLookupByLibrary.simpleMessage("Data Privacy"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "days": MessageLookupByLibrary.simpleMessage("Days"),
        "days_remaining":
            MessageLookupByLibrary.simpleMessage("Days Remaining"),
        "deactivate_account":
            MessageLookupByLibrary.simpleMessage("Deactivate Account"),
        "deactivate_message": MessageLookupByLibrary.simpleMessage(
            "Your profile will be temporarily\nhidden until you activate it again by\nlogging back in"),
        "deadline": MessageLookupByLibrary.simpleMessage("Deadline"),
        "december": MessageLookupByLibrary.simpleMessage("December"),
        "definition": MessageLookupByLibrary.simpleMessage(
            "A composite score from 1 to 100 that determines the overall quality of an influencer\'s audience. The higher the AQS, the better the quality."),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteChat": MessageLookupByLibrary.simpleMessage("Delete Chat"),
        "deleteChatDesc": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this conversation?"),
        "delete_account":
            MessageLookupByLibrary.simpleMessage("Delete Account"),
        "delete_account_message": MessageLookupByLibrary.simpleMessage(
            "Temporarily Deactivate your account\ninstead of Deleting?"),
        "delete_account_notice": MessageLookupByLibrary.simpleMessage(
            "You will lose all your data by\ndeleting your account. This action\ncannot be undone."),
        "delete_bank_account":
            MessageLookupByLibrary.simpleMessage("Delete Bank Account"),
        "delete_bank_account_confirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this bank account? All associated data will be removed and cannot be accessed again. Please confirm your decision before proceeding."),
        "delete_company":
            MessageLookupByLibrary.simpleMessage("Delete Company"),
        "delete_draft_influencer_description":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete this draft influencer?"),
        "delete_draft_influencer_title":
            MessageLookupByLibrary.simpleMessage("Delete Draft Influencer"),
        "delete_fil_message": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this file?"),
        "delete_file": MessageLookupByLibrary.simpleMessage("delete file"),
        "delete_for_everyone":
            MessageLookupByLibrary.simpleMessage("Delete for Everyone"),
        "delete_list": MessageLookupByLibrary.simpleMessage("Delete List"),
        "delete_list_confirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this list? This action cannot be undone."),
        "delete_message":
            MessageLookupByLibrary.simpleMessage("Delete message"),
        "delete_messages": m1,
        "delete_messages_for_everyone":
            MessageLookupByLibrary.simpleMessage("Delete for everyone"),
        "delete_my_account":
            MessageLookupByLibrary.simpleMessage("Delete my Account"),
        "delete_partner":
            MessageLookupByLibrary.simpleMessage("Delete Partner"),
        "delete_platform_description": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this platform?"),
        "delete_platform_title":
            MessageLookupByLibrary.simpleMessage("Delete Platform"),
        "delete_portfolio":
            MessageLookupByLibrary.simpleMessage("Delete Portfolio"),
        "delete_product":
            MessageLookupByLibrary.simpleMessage("Delete Product"),
        "delete_store": MessageLookupByLibrary.simpleMessage("Delete Store"),
        "delete_you_tube_video":
            MessageLookupByLibrary.simpleMessage("Delete YouTube Video"),
        "delete_your_account":
            MessageLookupByLibrary.simpleMessage("Delete your account?"),
        "delivered": MessageLookupByLibrary.simpleMessage("Delivered"),
        "delivered_request": MessageLookupByLibrary.simpleMessage("Delivered"),
        "delivery_in": MessageLookupByLibrary.simpleMessage("Delivery in"),
        "deposit": MessageLookupByLibrary.simpleMessage("Deposit"),
        "depositIsSecure": MessageLookupByLibrary.simpleMessage(
            "Deposit is securely held by nojom"),
        "deposit_done": MessageLookupByLibrary.simpleMessage("Deposit"),
        "deposit_process": MessageLookupByLibrary.simpleMessage(
            "The deposit process takes from 5 minutes to 2 business days"),
        "describe": MessageLookupByLibrary.simpleMessage("Details"),
        "describeOfferHere":
            MessageLookupByLibrary.simpleMessage("Describe your offer here..."),
        "describe_bid":
            MessageLookupByLibrary.simpleMessage("Describe your bid"),
        "describe_camp_details": MessageLookupByLibrary.simpleMessage(
            "Describe the campaign you\'ve got in mind. Provide as much details as you can to attract relevant stars."),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "detailed_applications": MessageLookupByLibrary.simpleMessage(
            "In addition , application , applications with more details show how serious you are"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "details_for_influencer":
            MessageLookupByLibrary.simpleMessage("Details for Influencer"),
        "details_privacy_hint": MessageLookupByLibrary.simpleMessage(
            "These details are available only to this Star."),
        "details_provided_to_influencer": MessageLookupByLibrary.simpleMessage(
            "Details Provided to the Influencer"),
        "discard": MessageLookupByLibrary.simpleMessage("Discard"),
        "discard_changes":
            MessageLookupByLibrary.simpleMessage("Discard changes"),
        "discard_changes_description": MessageLookupByLibrary.simpleMessage(
            "If you go back now, you will lose your edits."),
        "discard_changes_prompt": MessageLookupByLibrary.simpleMessage(
            "Do you want to discard changes?"),
        "discard_changes_title": MessageLookupByLibrary.simpleMessage(
            "Do you want to discard the changes?"),
        "discard_changes_warning": MessageLookupByLibrary.simpleMessage(
            "If you go back now, you will lose your edits."),
        "discount": MessageLookupByLibrary.simpleMessage("Discount"),
        "discount_all_platforms":
            MessageLookupByLibrary.simpleMessage("Discount all platforms"),
        "discount_up_to_percent":
            MessageLookupByLibrary.simpleMessage("Discount up to"),
        "display": MessageLookupByLibrary.simpleMessage("Display"),
        "distribution_of_video_likes":
            MessageLookupByLibrary.simpleMessage("Distribution of Video Likes"),
        "document": MessageLookupByLibrary.simpleMessage("Document"),
        "documentText": MessageLookupByLibrary.simpleMessage("Document"),
        "dollar": MessageLookupByLibrary.simpleMessage("Dollar (\$)"),
        "domain_match": MessageLookupByLibrary.simpleMessage("Domain Match"),
        "domain_match_description": MessageLookupByLibrary.simpleMessage(
            "Measures how well the influencer’s domain matches the campaign’s categories. The higher the match, the more suitable the influencer is for the campaign."),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "download_app": MessageLookupByLibrary.simpleMessage("Download App"),
        "download_company_app":
            MessageLookupByLibrary.simpleMessage("Download Company App"),
        "download_completed":
            MessageLookupByLibrary.simpleMessage("Download completed"),
        "download_failed":
            MessageLookupByLibrary.simpleMessage("Download failed"),
        "download_influencer_app":
            MessageLookupByLibrary.simpleMessage("Download the Stars app"),
        "download_influencer_app_now":
            MessageLookupByLibrary.simpleMessage("Download the Stars app now!"),
        "draft_pending_order": MessageLookupByLibrary.simpleMessage(
            "Draft (Waiting for order completion)"),
        "draft_pending_price":
            MessageLookupByLibrary.simpleMessage("Draft (Waiting for price)"),
        "draft_stars_added_successfully": MessageLookupByLibrary.simpleMessage(
            "Draft stars added to campaigns successfully"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "edit_agency": MessageLookupByLibrary.simpleMessage("Edit Agency"),
        "edit_bid": MessageLookupByLibrary.simpleMessage("Edit bid"),
        "edit_profile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "edit_profile_picture":
            MessageLookupByLibrary.simpleMessage("Edit Profile Picture"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "email_address": MessageLookupByLibrary.simpleMessage("Email address"),
        "email_already_verified":
            MessageLookupByLibrary.simpleMessage("You already verified email"),
        "email_files_to_client":
            MessageLookupByLibrary.simpleMessage("Email files to client"),
        "email_phone":
            MessageLookupByLibrary.simpleMessage("Email or Phone Number"),
        "email_verification_notice": MessageLookupByLibrary.simpleMessage(
            "A confirmation email will be sent to your email address. Please open the email and click the link to verify your address."),
        "enable_unified_price": MessageLookupByLibrary.simpleMessage(
            "Enable unified price (package)"),
        "enabled": MessageLookupByLibrary.simpleMessage("Enabled"),
        "end_to_end_encrypted": MessageLookupByLibrary.simpleMessage(
            "Messages and calls are end-to-end encrypted. No one outside of this chat, not even nojom, can read or listen to them. Tap to learn more."),
        "engagement": MessageLookupByLibrary.simpleMessage("Engagement"),
        "engagement_rate":
            MessageLookupByLibrary.simpleMessage("Interaction rate"),
        "engagement_rate_description": MessageLookupByLibrary.simpleMessage(
            "Reflects the level of audience interaction with the influencer’s content on social platforms (likes, comments, shares). This helps measure how impactful the content is on followers."),
        "engagement_rate_description1": MessageLookupByLibrary.simpleMessage(
            "The percentage of followers who interact with the influencer’s content."),
        "english_name_validation":
            MessageLookupByLibrary.simpleMessage("Should be english letters"),
        "enjoy_a_smooth_experience_when_requesting_influencer_services_ensuring_a_safe_and_professional_process_for_successful_collaboration":
            MessageLookupByLibrary.simpleMessage(
                "Enjoy a smooth experience when requesting influencer services, ensuring a safe and professional process for successful collaboration."),
        "enjoy_outstanding": MessageLookupByLibrary.simpleMessage(
            "Enjoy an outstanding user experience and exclusive features just for celebrities."),
        "enter_ad_details": MessageLookupByLibrary.simpleMessage(
            "Write advertisement details for the influencer here"),
        "enter_amount":
            MessageLookupByLibrary.simpleMessage("Please enter amount"),
        "enter_brand_name": MessageLookupByLibrary.simpleMessage(
            "Enter the brand name that will appear to influencers."),
        "enter_campaign_objective_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Enter the Campaign Objective..."),
        "enter_code":
            MessageLookupByLibrary.simpleMessage("Enter 6-digit code"),
        "enter_commercial_registration_number":
            MessageLookupByLibrary.simpleMessage(
                "Enter your company\'s commercial registration number or your freelance document number. This information will be used to verify your account and will be kept completely confidential for verification purposes only."),
        "enter_company_link": MessageLookupByLibrary.simpleMessage(
            "Enter the website URL of your company or your social media account. It will be shown in your profile to help others learn more about your business and services."),
        "enter_contact_name": MessageLookupByLibrary.simpleMessage(
            "Enter the name of the person responsible for managing the account on the platform."),
        "enter_current_password":
            MessageLookupByLibrary.simpleMessage("Enter Current Password"),
        "enter_email":
            MessageLookupByLibrary.simpleMessage("Please enter your email"),
        "enter_email_or_phone":
            MessageLookupByLibrary.simpleMessage("Please enter email or phone"),
        "enter_email_phone": MessageLookupByLibrary.simpleMessage(
            "Please enter email and phone"),
        "enter_link": MessageLookupByLibrary.simpleMessage("Enter link"),
        "enter_name": MessageLookupByLibrary.simpleMessage("Enter your name"),
        "enter_new_password":
            MessageLookupByLibrary.simpleMessage("Enter New Password"),
        "enter_number_or_phone": MessageLookupByLibrary.simpleMessage(
            "Enter a real email and phone number."),
        "enter_official_trade_name": MessageLookupByLibrary.simpleMessage(
            "Enter the official trade name of the company as registered in the commercial records."),
        "enter_pass":
            MessageLookupByLibrary.simpleMessage("Please enter password"),
        "enter_phone_number": MessageLookupByLibrary.simpleMessage(
            "Enter your phone number so we can verify your account. A verification code will be sent to this number."),
        "enter_phone_verification_code": MessageLookupByLibrary.simpleMessage(
            "Enter the verification code sent to"),
        "enter_public_name": MessageLookupByLibrary.simpleMessage(
            "Enter your public name in English and Arabic."),
        "enter_reason":
            MessageLookupByLibrary.simpleMessage("Please enter reason"),
        "enter_security_code":
            MessageLookupByLibrary.simpleMessage("Enter Security Code"),
        "enter_valid_bid": MessageLookupByLibrary.simpleMessage(
            "Please Enter valid bid Amount"),
        "enter_valid_delivery_value": MessageLookupByLibrary.simpleMessage(
            "Please Enter bid Delivery time"),
        "enter_vat_number": MessageLookupByLibrary.simpleMessage(
            "Enter your company\'s VAT number. This information will be used to verify your account and will be kept completely confidential for verification purposes only."),
        "enter_verification_code_sent_to": MessageLookupByLibrary.simpleMessage(
            "Enter the verification code sent to"),
        "enter_your_link_here":
            MessageLookupByLibrary.simpleMessage("Enter your link here"),
        "entertainment": MessageLookupByLibrary.simpleMessage("Entertainment"),
        "er": MessageLookupByLibrary.simpleMessage("ER"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("BAD REQUEST"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("No result found"),
        "error_Timeout_Error": MessageLookupByLibrary.simpleMessage("TIME OUT"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("UNAUTHORIZED"),
        "error_cancel_token": MessageLookupByLibrary.simpleMessage(
            "The connection is interrupted"),
        "error_confirm_password":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "error_conflict":
            MessageLookupByLibrary.simpleMessage("Conflict error"),
        "error_connection": MessageLookupByLibrary.simpleMessage(
            "An error occurred during the connection"),
        "error_connection_lost":
            MessageLookupByLibrary.simpleMessage("Connection error"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("YOU DO NOT HAVE PRIVILEGE"),
        "error_general": MessageLookupByLibrary.simpleMessage(
            "AN UNEXPECTED ERROR OCCURRED"),
        "error_internal_server":
            MessageLookupByLibrary.simpleMessage("INTERNAL SERVER ERROR"),
        "error_loading_star_details":
            MessageLookupByLibrary.simpleMessage("Error loading star details"),
        "error_sending_message": m2,
        "error_socket":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "everyone": MessageLookupByLibrary.simpleMessage("Everyone"),
        "example_reward": MessageLookupByLibrary.simpleMessage(
            "For example: if you invited 100 friends then you will get 1,000 SAR"),
        "excellent": MessageLookupByLibrary.simpleMessage("Excellent"),
        "excellent_match":
            MessageLookupByLibrary.simpleMessage("Excellent Match"),
        "exceptional_exp":
            MessageLookupByLibrary.simpleMessage("Exceptional Experience"),
        "exclusive": MessageLookupByLibrary.simpleMessage("Exclusive"),
        "expiry_date": MessageLookupByLibrary.simpleMessage("Expiry date"),
        "exploreCampaigns":
            MessageLookupByLibrary.simpleMessage("Explore your campaigns here"),
        "explore_campaigns":
            MessageLookupByLibrary.simpleMessage("Explore new Campaigns here"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "fail_message": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. please try again."),
        "failed_resize_encode_image": m3,
        "failed_to_delete_asset":
            MessageLookupByLibrary.simpleMessage("Failed to delete asset"),
        "failed_to_delete_message":
            MessageLookupByLibrary.simpleMessage("Failed to delete message"),
        "failed_to_delete_messages":
            MessageLookupByLibrary.simpleMessage("Failed to delete messages"),
        "failed_to_forward_message":
            MessageLookupByLibrary.simpleMessage("Failed to forward message"),
        "failed_to_forward_messages":
            MessageLookupByLibrary.simpleMessage("Failed to forward messages"),
        "failed_to_load_album_photos":
            MessageLookupByLibrary.simpleMessage("Failed to load album photos"),
        "failed_to_load_album_videos":
            MessageLookupByLibrary.simpleMessage("Failed to load album videos"),
        "failed_to_load_channels":
            MessageLookupByLibrary.simpleMessage("Failed to load channels"),
        "failed_to_load_gif":
            MessageLookupByLibrary.simpleMessage("Failed to load GIF"),
        "failed_to_load_photos":
            MessageLookupByLibrary.simpleMessage("Failed to load more photos"),
        "failed_to_load_video":
            MessageLookupByLibrary.simpleMessage("Failed to load video"),
        "failed_to_load_videos":
            MessageLookupByLibrary.simpleMessage("Failed to load more videos"),
        "failed_to_pin_message":
            MessageLookupByLibrary.simpleMessage("Failed to pin message"),
        "failed_to_select_files": MessageLookupByLibrary.simpleMessage(
            "Failed to select additional files"),
        "failed_to_send_documents":
            MessageLookupByLibrary.simpleMessage("Failed to send documents"),
        "failed_to_share":
            MessageLookupByLibrary.simpleMessage("Failed to share"),
        "failed_to_share_attachments":
            MessageLookupByLibrary.simpleMessage("Failed to share attachments"),
        "failed_to_start_recording": m4,
        "failed_to_unpin_message":
            MessageLookupByLibrary.simpleMessage("Failed to unpin message"),
        "failureActions":
            MessageLookupByLibrary.simpleMessage("Failure Actions"),
        "fair": MessageLookupByLibrary.simpleMessage("Fair"),
        "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
        "faqs": MessageLookupByLibrary.simpleMessage("FAQs"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "favorites_add_to_favorites_title":
            MessageLookupByLibrary.simpleMessage("Add to a favorite"),
        "favorites_char_count_prefix":
            MessageLookupByLibrary.simpleMessage("30/"),
        "favorites_char_count_suffix":
            MessageLookupByLibrary.simpleMessage(" chars"),
        "favorites_character_limit_exceeded":
            MessageLookupByLibrary.simpleMessage("Character limit exceeded"),
        "favorites_character_limit_note": MessageLookupByLibrary.simpleMessage(
            "List names are limited to 30 characters to ensure proper display"),
        "favorites_create_first_list":
            MessageLookupByLibrary.simpleMessage("Create your first list"),
        "favorites_create_first_list_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "Create your first list to group your favorite influencers"),
        "favorites_create_list":
            MessageLookupByLibrary.simpleMessage("Create new list"),
        "favorites_create_list_description": MessageLookupByLibrary.simpleMessage(
            "Create a personalized list to organize your favorite influencers"),
        "favorites_create_list_title":
            MessageLookupByLibrary.simpleMessage("Create List"),
        "favorites_create_new_list":
            MessageLookupByLibrary.simpleMessage("Create New List"),
        "favorites_create_new_list_button":
            MessageLookupByLibrary.simpleMessage("Create new list"),
        "favorites_delete_list_error": MessageLookupByLibrary.simpleMessage(
            "Error occurred while deleting list"),
        "favorites_delete_list_message": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete list"),
        "favorites_delete_list_title":
            MessageLookupByLibrary.simpleMessage("Delete List"),
        "favorites_edit_lists_title":
            MessageLookupByLibrary.simpleMessage("Edit"),
        "favorites_empty_list":
            MessageLookupByLibrary.simpleMessage("Empty list"),
        "favorites_list_deleted_successfully":
            MessageLookupByLibrary.simpleMessage("List deleted successfully"),
        "favorites_list_name":
            MessageLookupByLibrary.simpleMessage("List name"),
        "favorites_list_name_hint":
            MessageLookupByLibrary.simpleMessage("Enter list name"),
        "favorites_list_restored_successfully":
            MessageLookupByLibrary.simpleMessage("List restored successfully"),
        "favorites_lists_reordered_successfully":
            MessageLookupByLibrary.simpleMessage(
                "Lists reordered successfully"),
        "favorites_lists_updated_successfully":
            MessageLookupByLibrary.simpleMessage("Lists updated successfully"),
        "favorites_manage_description": MessageLookupByLibrary.simpleMessage(
            "Select or deselect lists to manage where this influencer appears"),
        "favorites_manage_favorites_title":
            MessageLookupByLibrary.simpleMessage("Manage Favorites"),
        "favorites_max_30_chars":
            MessageLookupByLibrary.simpleMessage("Maximum 30 characters"),
        "favorites_no_lists_description": MessageLookupByLibrary.simpleMessage(
            "Create your first list to start organizing your favorite influencers"),
        "favorites_no_lists_description_add":
            MessageLookupByLibrary.simpleMessage(
                "Create a list to add this influencer to your favorites"),
        "favorites_no_lists_title": MessageLookupByLibrary.simpleMessage(
            "You didn\'t create any lists yet"),
        "favorites_rename_error": MessageLookupByLibrary.simpleMessage(
            "Error occurred while renaming list"),
        "favorites_reorder_error": MessageLookupByLibrary.simpleMessage(
            "Error occurred while reordering lists"),
        "favorites_select_lists_to_add_influencer":
            MessageLookupByLibrary.simpleMessage(
                "Select the lists you want to add the influencer to"),
        "favorites_some_updates_failed":
            MessageLookupByLibrary.simpleMessage("Some list updates failed"),
        "favorites_undo_error": MessageLookupByLibrary.simpleMessage(
            "Error occurred while undoing deletion"),
        "february": MessageLookupByLibrary.simpleMessage("February"),
        "feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "feedback_prompt": MessageLookupByLibrary.simpleMessage(
            "Write your feedback about the star here..."),
        "feedback_sent":
            MessageLookupByLibrary.simpleMessage("The Feedback is sent"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "file": MessageLookupByLibrary.simpleMessage("File"),
        "file_type_not_supported":
            MessageLookupByLibrary.simpleMessage("File type not supported"),
        "files": MessageLookupByLibrary.simpleMessage("files"),
        "fillField":
            MessageLookupByLibrary.simpleMessage("Please enter this field"),
        "fill_names":
            MessageLookupByLibrary.simpleMessage("Please fill your name"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "final_approval": MessageLookupByLibrary.simpleMessage(
            "After final approval, the amount is released to the star, and the order is considered complete."),
        "final_score": MessageLookupByLibrary.simpleMessage("Final Score"),
        "find_a_star":
            MessageLookupByLibrary.simpleMessage("Search for Influencer"),
        "find_and_collaborate":
            MessageLookupByLibrary.simpleMessage("Find and Collaborate "),
        "first_campaign_message": MessageLookupByLibrary.simpleMessage(
            "Create your first campaign with ease!"),
        "first_month_offer": MessageLookupByLibrary.simpleMessage(
            "Save your full budget — your campaigns in the first month have no 5% service fee."),
        "first_name": MessageLookupByLibrary.simpleMessage("First Name"),
        "follower_category":
            MessageLookupByLibrary.simpleMessage("Follower Category"),
        "follower_growth":
            MessageLookupByLibrary.simpleMessage("Follower Growth"),
        "followers": MessageLookupByLibrary.simpleMessage("Followers"),
        "followers_category_details":
            MessageLookupByLibrary.simpleMessage("Followers Category Details"),
        "followers_count": m5,
        "followers_count_filter":
            MessageLookupByLibrary.simpleMessage("Followers Count"),
        "followers_growth": MessageLookupByLibrary.simpleMessage(
            "Followers & Following Growth"),
        "followers_growth_description": MessageLookupByLibrary.simpleMessage(
            "Patterns of growth in followers and the accounts the influencer follows."),
        "followers_high_to_low":
            MessageLookupByLibrary.simpleMessage("Followers: High to Low"),
        "followers_low_to_high":
            MessageLookupByLibrary.simpleMessage("Followers: Low to High"),
        "following": MessageLookupByLibrary.simpleMessage("Following"),
        "for_campaign": MessageLookupByLibrary.simpleMessage("campaign"),
        "for_every_one":
            MessageLookupByLibrary.simpleMessage("Visible to everyone"),
        "for_refund": MessageLookupByLibrary.simpleMessage("For Refund"),
        "forgot_pass": MessageLookupByLibrary.simpleMessage("Forgot password"),
        "forgot_pass_verify": MessageLookupByLibrary.simpleMessage(
            "We\'ll send a verification code to your number so you can change your password"),
        "forward": MessageLookupByLibrary.simpleMessage("Forward"),
        "forward_message":
            MessageLookupByLibrary.simpleMessage("Forward message"),
        "forward_multiple_messages": m6,
        "forwarded": MessageLookupByLibrary.simpleMessage("Forwarded"),
        "forwarded_to_chats": m7,
        "forwarding": MessageLookupByLibrary.simpleMessage("Forwarding..."),
        "founded": MessageLookupByLibrary.simpleMessage("Founded"),
        "freelance_number_hint": MessageLookupByLibrary.simpleMessage(
            "The freelance document number usually consists of numbers and letters and is issued by the official freelance platform accredited by the Ministry of Human Resources."),
        "friend": MessageLookupByLibrary.simpleMessage("Friend"),
        "friend_completion_reward": MessageLookupByLibrary.simpleMessage(
            "You will receive 10 SAR , once your friend complete the campaign."),
        "friend_joins": MessageLookupByLibrary.simpleMessage(
            "Each time a friend joins, you earn"),
        "friends_campaign": MessageLookupByLibrary.simpleMessage(
            "Your friends list a campaign"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "full_refund_if_no_ad": MessageLookupByLibrary.simpleMessage(
            "100% refund if the ad is not published."),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "gender": MessageLookupByLibrary.simpleMessage("What\'s your gender?"),
        "gender_prompt":
            MessageLookupByLibrary.simpleMessage("Are you male or female?"),
        "general_accounts":
            MessageLookupByLibrary.simpleMessage("General Accounts"),
        "general_analysis":
            MessageLookupByLibrary.simpleMessage("General Analysis"),
        "general_information":
            MessageLookupByLibrary.simpleMessage("General Information"),
        "generators": MessageLookupByLibrary.simpleMessage("Content creators"),
        "get_100_sar": MessageLookupByLibrary.simpleMessage("Win 100 SAR"),
        "get_10_sar": MessageLookupByLibrary.simpleMessage("Easy 10 SAR"),
        "get_10_sar_today":
            MessageLookupByLibrary.simpleMessage("Get 10 SAR Today"),
        "get_200_sar": MessageLookupByLibrary.simpleMessage("Get 200 SAR"),
        "get_discount": MessageLookupByLibrary.simpleMessage("Get Discount"),
        "get_paid": MessageLookupByLibrary.simpleMessage(
            "Get paid when you complete the campaign"),
        "get_up_to_200_sar":
            MessageLookupByLibrary.simpleMessage("Get up to 200 SAR"),
        "get_up_to_200_sar_describe": MessageLookupByLibrary.simpleMessage(
            "Give your friends 10% off their first\ncampaign and get 20% off their first\ncampaign up to 200 SAR for each\nperson who uses your link or promo\ncode to place their first campaign.\n"),
        "getting_location":
            MessageLookupByLibrary.simpleMessage("Getting location..."),
        "gif_not_available":
            MessageLookupByLibrary.simpleMessage("GIF not available"),
        "go_to_payment":
            MessageLookupByLibrary.simpleMessage("Proceed to Payment"),
        "go_to_payment_1":
            MessageLookupByLibrary.simpleMessage("Go to Payment"),
        "go_to_portfolio":
            MessageLookupByLibrary.simpleMessage("Go to Portfolio"),
        "go_to_profile":
            MessageLookupByLibrary.simpleMessage("Go to Portfolio"),
        "gold": MessageLookupByLibrary.simpleMessage("Gold"),
        "gold_level_reward": MessageLookupByLibrary.simpleMessage(
            "12000 points for reaching Gold level"),
        "good": MessageLookupByLibrary.simpleMessage("Good"),
        "good_match": MessageLookupByLibrary.simpleMessage("Good Match"),
        "google": MessageLookupByLibrary.simpleMessage("Google"),
        "google_play": MessageLookupByLibrary.simpleMessage("Google Play"),
        "google_play_store":
            MessageLookupByLibrary.simpleMessage("Google Play"),
        "google_search": MessageLookupByLibrary.simpleMessage("Google Search"),
        "growth_patterns": MessageLookupByLibrary.simpleMessage(
            "Followers & Following Growth"),
        "growth_patterns_desc": MessageLookupByLibrary.simpleMessage(
            "The growth patterns of followers and the accounts the influencer follows."),
        "harmful_illegal":
            MessageLookupByLibrary.simpleMessage("Harmful or illegal"),
        "hashtags": MessageLookupByLibrary.simpleMessage("Hashtags"),
        "have_account":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "have_contract": MessageLookupByLibrary.simpleMessage("Have Contract"),
        "help_and_privacy":
            MessageLookupByLibrary.simpleMessage("Help & Privacy"),
        "help_brands_in_filter": MessageLookupByLibrary.simpleMessage(
            "This helps brands filter and find you."),
        "hi": MessageLookupByLibrary.simpleMessage("Hi,"),
        "hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "hide_audience_segment_details": MessageLookupByLibrary.simpleMessage(
            "Hide Audience Segment Details"),
        "hide_details": MessageLookupByLibrary.simpleMessage("Hide Details"),
        "high": MessageLookupByLibrary.simpleMessage("High"),
        "high_to_low": MessageLookupByLibrary.simpleMessage("high to low"),
        "higher_trust_score":
            MessageLookupByLibrary.simpleMessage("Higher Trust Score"),
        "hire": MessageLookupByLibrary.simpleMessage("HIRE"),
        "hire_details": MessageLookupByLibrary.simpleMessage(
            "You\'ll receive free bids from our talented stars within hours. Live chat with them, Compare bids and collaborate the best fit."),
        "hired": MessageLookupByLibrary.simpleMessage("Hired"),
        "hold_amount": MessageLookupByLibrary.simpleMessage("Hold Amount"),
        "hold_to_record":
            MessageLookupByLibrary.simpleMessage("Hold to record"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "home_acc": MessageLookupByLibrary.simpleMessage("Profile"),
        "home_campaigns": MessageLookupByLibrary.simpleMessage("Campaigns"),
        "hour": MessageLookupByLibrary.simpleMessage("Hour"),
        "hours": MessageLookupByLibrary.simpleMessage("hours"),
        "how_aqs_is_calculated":
            MessageLookupByLibrary.simpleMessage("How is AQS calculated?"),
        "how_camp_work": MessageLookupByLibrary.simpleMessage(
            "You can live chat with your stars to get constant updates on the progress of your campaign."),
        "how_can_see_this_item":
            MessageLookupByLibrary.simpleMessage("How can see this item"),
        "how_can_we_help_you":
            MessageLookupByLibrary.simpleMessage("How can we help you"),
        "how_cqs_is_calculated":
            MessageLookupByLibrary.simpleMessage("How is CQS calculated?"),
        "how_it_work": MessageLookupByLibrary.simpleMessage("How it works"),
        "how_it_works": MessageLookupByLibrary.simpleMessage("How It Works"),
        "how_know_about_us":
            MessageLookupByLibrary.simpleMessage("How did you know about us ?"),
        "how_much_top_up": MessageLookupByLibrary.simpleMessage(
            "How much would you like to top up"),
        "how_score_calculated": MessageLookupByLibrary.simpleMessage(
            "How this score is calculated"),
        "how_to_calculate_score":
            MessageLookupByLibrary.simpleMessage("How to Calculate this Score"),
        "how_to_pay":
            MessageLookupByLibrary.simpleMessage("How would you like to pay"),
        "how_was": MessageLookupByLibrary.simpleMessage("How was "),
        "how_would_you_like_to_pay": MessageLookupByLibrary.simpleMessage(
            "How Would you like to pay to top up"),
        "iban": MessageLookupByLibrary.simpleMessage("IBAN"),
        "idea_issue_feedback": MessageLookupByLibrary.simpleMessage(
            "Your ideas, issue, feedback or compliments"),
        "im_here": MessageLookupByLibrary.simpleMessage("I\'m here"),
        "image_editor_activities":
            MessageLookupByLibrary.simpleMessage("Activities"),
        "image_editor_align_center":
            MessageLookupByLibrary.simpleMessage("Align Center"),
        "image_editor_align_left":
            MessageLookupByLibrary.simpleMessage("Align Left"),
        "image_editor_align_right":
            MessageLookupByLibrary.simpleMessage("Align Right"),
        "image_editor_align_text":
            MessageLookupByLibrary.simpleMessage("Align Text"),
        "image_editor_animals":
            MessageLookupByLibrary.simpleMessage("Animals & Nature"),
        "image_editor_apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "image_editor_arrow": MessageLookupByLibrary.simpleMessage("Arrow"),
        "image_editor_back": MessageLookupByLibrary.simpleMessage("Back"),
        "image_editor_background_color":
            MessageLookupByLibrary.simpleMessage("Background Color"),
        "image_editor_background_mode":
            MessageLookupByLibrary.simpleMessage("Background Mode"),
        "image_editor_blur": MessageLookupByLibrary.simpleMessage("Blur"),
        "image_editor_blur_factor":
            MessageLookupByLibrary.simpleMessage("Blur Factor"),
        "image_editor_bold": MessageLookupByLibrary.simpleMessage("Bold"),
        "image_editor_brightness":
            MessageLookupByLibrary.simpleMessage("Brightness"),
        "image_editor_brush_size":
            MessageLookupByLibrary.simpleMessage("Brush Size"),
        "image_editor_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "image_editor_circle": MessageLookupByLibrary.simpleMessage("Circle"),
        "image_editor_close": MessageLookupByLibrary.simpleMessage("Close"),
        "image_editor_contrast":
            MessageLookupByLibrary.simpleMessage("Contrast"),
        "image_editor_crop": MessageLookupByLibrary.simpleMessage("Crop"),
        "image_editor_crop_rotate":
            MessageLookupByLibrary.simpleMessage("Crop & Rotate"),
        "image_editor_custom": MessageLookupByLibrary.simpleMessage("Custom"),
        "image_editor_dash_line":
            MessageLookupByLibrary.simpleMessage("Dash Line"),
        "image_editor_done": MessageLookupByLibrary.simpleMessage("Done"),
        "image_editor_dont_save":
            MessageLookupByLibrary.simpleMessage("Don\'t Save"),
        "image_editor_duplicate":
            MessageLookupByLibrary.simpleMessage("Duplicate"),
        "image_editor_emoji": MessageLookupByLibrary.simpleMessage("Emoji"),
        "image_editor_eraser": MessageLookupByLibrary.simpleMessage("Eraser"),
        "image_editor_exposure":
            MessageLookupByLibrary.simpleMessage("Exposure"),
        "image_editor_fade": MessageLookupByLibrary.simpleMessage("Fade"),
        "image_editor_filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "image_editor_flags": MessageLookupByLibrary.simpleMessage("Flags"),
        "image_editor_flip": MessageLookupByLibrary.simpleMessage("Flip"),
        "image_editor_font_color":
            MessageLookupByLibrary.simpleMessage("Font Color"),
        "image_editor_font_family":
            MessageLookupByLibrary.simpleMessage("Font Family"),
        "image_editor_font_scale":
            MessageLookupByLibrary.simpleMessage("Font Scale"),
        "image_editor_food":
            MessageLookupByLibrary.simpleMessage("Food & Drink"),
        "image_editor_free": MessageLookupByLibrary.simpleMessage("Free"),
        "image_editor_freestyle":
            MessageLookupByLibrary.simpleMessage("Freestyle"),
        "image_editor_hue": MessageLookupByLibrary.simpleMessage("Hue"),
        "image_editor_import_sticker":
            MessageLookupByLibrary.simpleMessage("Import Sticker"),
        "image_editor_input_hint":
            MessageLookupByLibrary.simpleMessage("Enter text"),
        "image_editor_italic": MessageLookupByLibrary.simpleMessage("Italic"),
        "image_editor_layer": MessageLookupByLibrary.simpleMessage("Layer"),
        "image_editor_line": MessageLookupByLibrary.simpleMessage("Line"),
        "image_editor_loading": MessageLookupByLibrary.simpleMessage("Loading"),
        "image_editor_luminance":
            MessageLookupByLibrary.simpleMessage("Luminance"),
        "image_editor_more": MessageLookupByLibrary.simpleMessage("More"),
        "image_editor_move_down":
            MessageLookupByLibrary.simpleMessage("Move Down"),
        "image_editor_move_up": MessageLookupByLibrary.simpleMessage("Move Up"),
        "image_editor_move_zoom": MessageLookupByLibrary.simpleMessage("Zoom"),
        "image_editor_no_changes_detected":
            MessageLookupByLibrary.simpleMessage("No changes detected"),
        "image_editor_no_emoji":
            MessageLookupByLibrary.simpleMessage("No emoji"),
        "image_editor_none": MessageLookupByLibrary.simpleMessage("None"),
        "image_editor_objects": MessageLookupByLibrary.simpleMessage("Objects"),
        "image_editor_opacity": MessageLookupByLibrary.simpleMessage("Opacity"),
        "image_editor_original":
            MessageLookupByLibrary.simpleMessage("Original"),
        "image_editor_paint": MessageLookupByLibrary.simpleMessage("Paint"),
        "image_editor_pixelate":
            MessageLookupByLibrary.simpleMessage("Pixelate"),
        "image_editor_polygon": MessageLookupByLibrary.simpleMessage("Polygon"),
        "image_editor_preparing":
            MessageLookupByLibrary.simpleMessage("Preparing"),
        "image_editor_ratio": MessageLookupByLibrary.simpleMessage("Ratio"),
        "image_editor_recent": MessageLookupByLibrary.simpleMessage("Recent"),
        "image_editor_rectangle":
            MessageLookupByLibrary.simpleMessage("Rectangle"),
        "image_editor_redo": MessageLookupByLibrary.simpleMessage("Redo"),
        "image_editor_remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "image_editor_remove_layer":
            MessageLookupByLibrary.simpleMessage("Remove Layer"),
        "image_editor_reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "image_editor_rotate": MessageLookupByLibrary.simpleMessage("Rotate"),
        "image_editor_saturation":
            MessageLookupByLibrary.simpleMessage("Saturation"),
        "image_editor_save": MessageLookupByLibrary.simpleMessage("Save"),
        "image_editor_search": MessageLookupByLibrary.simpleMessage("Search"),
        "image_editor_sharpness":
            MessageLookupByLibrary.simpleMessage("Sharpness"),
        "image_editor_smallcaps":
            MessageLookupByLibrary.simpleMessage("Small Caps"),
        "image_editor_smileys":
            MessageLookupByLibrary.simpleMessage("Smileys & People"),
        "image_editor_square": MessageLookupByLibrary.simpleMessage("Square"),
        "image_editor_square_shape":
            MessageLookupByLibrary.simpleMessage("Square"),
        "image_editor_sticker": MessageLookupByLibrary.simpleMessage("Sticker"),
        "image_editor_stroke_width":
            MessageLookupByLibrary.simpleMessage("Stroke Width"),
        "image_editor_symbols": MessageLookupByLibrary.simpleMessage("Symbols"),
        "image_editor_temperature":
            MessageLookupByLibrary.simpleMessage("Temperature"),
        "image_editor_text": MessageLookupByLibrary.simpleMessage("Text"),
        "image_editor_text_style":
            MessageLookupByLibrary.simpleMessage("Text Style"),
        "image_editor_to_background":
            MessageLookupByLibrary.simpleMessage("To Background"),
        "image_editor_to_foreground":
            MessageLookupByLibrary.simpleMessage("To Foreground"),
        "image_editor_toggle_fill":
            MessageLookupByLibrary.simpleMessage("Toggle Fill"),
        "image_editor_travel":
            MessageLookupByLibrary.simpleMessage("Travel & Places"),
        "image_editor_tune": MessageLookupByLibrary.simpleMessage("Tune"),
        "image_editor_underline":
            MessageLookupByLibrary.simpleMessage("Underline"),
        "image_editor_undo": MessageLookupByLibrary.simpleMessage("Undo"),
        "image_editor_unsaved_changes":
            MessageLookupByLibrary.simpleMessage("Unsaved Changes"),
        "image_editor_unsaved_changes_body":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to leave without saving your changes?"),
        "images": MessageLookupByLibrary.simpleMessage("Images"),
        "images_edited_successfully":
            MessageLookupByLibrary.simpleMessage("Images edited successfully"),
        "implementation_review": MessageLookupByLibrary.simpleMessage(
            "Once the implementation is complete, you can review the submitted context and make sure it matches the requirements."),
        "important_notes":
            MessageLookupByLibrary.simpleMessage("Important Notes"),
        "improvement_prompt": MessageLookupByLibrary.simpleMessage(
            "How could we improve our services?"),
        "in_mints": MessageLookupByLibrary.simpleMessage("in mins"),
        "in_progress": MessageLookupByLibrary.simpleMessage("In Progress"),
        "in_progress_campaign_status_desc": MessageLookupByLibrary.simpleMessage(
            "You have already deposited payment, once the star has completed and submitted the campaign, you can check it and release the payment."),
        "include_screenshot": MessageLookupByLibrary.simpleMessage(
            "Include a screen shot with your review."),
        "income": MessageLookupByLibrary.simpleMessage("Income"),
        "increase_credibility": MessageLookupByLibrary.simpleMessage(
            "Increase your credibility by listing your clients of brands"),
        "increase_sales": MessageLookupByLibrary.simpleMessage(
            "Increase sales by expanding product visibility to a wider audience"),
        "industry": MessageLookupByLibrary.simpleMessage("Industry"),
        "influencerServices":
            MessageLookupByLibrary.simpleMessage("Influencer services"),
        "influencer_access_notice": MessageLookupByLibrary.simpleMessage(
            "All Influencers added to this campaign will be able to access these details, including attachments. However, they will not be able to see the proposed budget, target Influencer category, or suitable platforms for the campaign.."),
        "influencer_added_to":
            MessageLookupByLibrary.simpleMessage("Influencer added to"),
        "influencer_added_to_campaign": m8,
        "influencer_classification":
            MessageLookupByLibrary.simpleMessage("Influencer Category"),
        "influencer_details":
            MessageLookupByLibrary.simpleMessage("Influencer Details"),
        "influencer_discounts":
            MessageLookupByLibrary.simpleMessage("Influencer Discounts"),
        "influencer_domain_classification":
            MessageLookupByLibrary.simpleMessage(
                "Influencer Domain Classification"),
        "influencer_draft":
            MessageLookupByLibrary.simpleMessage("Influencer Draft"),
        "influencer_gets_paid_after_approval": MessageLookupByLibrary.simpleMessage(
            "The influencer receives the payment after submitting the ad and getting your approval."),
        "influencer_has_not_added_ad_prices":
            MessageLookupByLibrary.simpleMessage(
                "The influencer has not added ad prices"),
        "influencer_is_added_to":
            MessageLookupByLibrary.simpleMessage("Influencer is added to "),
        "influencer_notes":
            MessageLookupByLibrary.simpleMessage("General Notes for My Ads"),
        "influencer_removed_from_draft": m9,
        "influencer_removed_from_favorites":
            MessageLookupByLibrary.simpleMessage(
                "Influencer removed from favorites"),
        "influencer_services":
            MessageLookupByLibrary.simpleMessage("Influencer Services"),
        "influencer_stars": MessageLookupByLibrary.simpleMessage("Stars"),
        "influencer_suggestion":
            MessageLookupByLibrary.simpleMessage("Influencers Proposal"),
        "influencers": MessageLookupByLibrary.simpleMessage("Influencers"),
        "influencers1": MessageLookupByLibrary.simpleMessage("Influencers"),
        "influencers_access_notice": MessageLookupByLibrary.simpleMessage(
            "All influencers added to this campaign will be able to access these details, including attachments. However, they will not be able to see the proposed budget, target influencer category, or suitable platforms for the campaign.."),
        "influencers_description": MessageLookupByLibrary.simpleMessage(
            "Accounts with more than 5000 followers."),
        "influencers_in":
            MessageLookupByLibrary.simpleMessage("Influencers in "),
        "information_saved":
            MessageLookupByLibrary.simpleMessage("Changes saved successfully"),
        "input_text": MessageLookupByLibrary.simpleMessage("Input Text"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "instagram_aqs": MessageLookupByLibrary.simpleMessage("AQS"),
        "instagram_authenticity":
            MessageLookupByLibrary.simpleMessage("Authenticity"),
        "instagram_er": MessageLookupByLibrary.simpleMessage("ER"),
        "instagram_reachability":
            MessageLookupByLibrary.simpleMessage("Reachability"),
        "interaction_authenticity":
            MessageLookupByLibrary.simpleMessage("Interaction Authenticity"),
        "interaction_authenticity_desc": MessageLookupByLibrary.simpleMessage(
            "The percentage of likes and comments from real people, excluding engagement from pods or giveaway contests."),
        "interaction_credibility":
            MessageLookupByLibrary.simpleMessage("Interaction Credibility"),
        "interaction_credibility_description": MessageLookupByLibrary.simpleMessage(
            "The percentage of recent likes and comments from real people, without inflation from engagement pods or giveaway contests."),
        "interaction_rate":
            MessageLookupByLibrary.simpleMessage("Interaction Rate"),
        "interaction_rate_desc": MessageLookupByLibrary.simpleMessage(
            "The percentage of followers who engage with the influencer\'s content."),
        "interest_registered": MessageLookupByLibrary.simpleMessage(
            "Your interest has been registered"),
        "internet_connected":
            MessageLookupByLibrary.simpleMessage("Internet connected"),
        "invalid_phone_number":
            MessageLookupByLibrary.simpleMessage("Invalid phone number"),
        "invalid_website_link":
            MessageLookupByLibrary.simpleMessage("Invalid website link"),
        "invite_brand": MessageLookupByLibrary.simpleMessage("Invite Brand"),
        "invite_friends":
            MessageLookupByLibrary.simpleMessage("Invite friends"),
        "invite_reward": MessageLookupByLibrary.simpleMessage(
            "Invite your friends and you\'ll both get 50 SAR"),
        "january": MessageLookupByLibrary.simpleMessage("January"),
        "join_as_brand": MessageLookupByLibrary.simpleMessage("Join as Brand"),
        "join_as_star": MessageLookupByLibrary.simpleMessage("Join as Star"),
        "join_now": MessageLookupByLibrary.simpleMessage("Join now"),
        "join_platform": MessageLookupByLibrary.simpleMessage(
            "Join our platform to be part of an exclusive community of celebrities and influencers."),
        "join_star": MessageLookupByLibrary.simpleMessage("Join as Star"),
        "join_us": MessageLookupByLibrary.simpleMessage(
            "Join us and discover collaboration\n opportunities with prestigious brands and\n global companies."),
        "july": MessageLookupByLibrary.simpleMessage("July"),
        "june": MessageLookupByLibrary.simpleMessage("June"),
        "just_me": MessageLookupByLibrary.simpleMessage("only me"),
        "keep_card_for_checkout": MessageLookupByLibrary.simpleMessage(
            "Keep this card saved for faster checkout in the future"),
        "keep_going": MessageLookupByLibrary.simpleMessage("Continue"),
        "keep_it": MessageLookupByLibrary.simpleMessage("No, Keep It."),
        "keywords": MessageLookupByLibrary.simpleMessage("Keywords"),
        "kilo_byte": MessageLookupByLibrary.simpleMessage("kb"),
        "label_Login": MessageLookupByLibrary.simpleMessage("Login"),
        "label_app_language": MessageLookupByLibrary.simpleMessage("Language"),
        "label_change_language":
            MessageLookupByLibrary.simpleMessage("Change language"),
        "label_choose_language":
            MessageLookupByLibrary.simpleMessage("Choose language"),
        "label_confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "label_email": MessageLookupByLibrary.simpleMessage("Email"),
        "label_forget_pass":
            MessageLookupByLibrary.simpleMessage("Forget password?"),
        "label_full_name": MessageLookupByLibrary.simpleMessage("Full name"),
        "label_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "label_password": MessageLookupByLibrary.simpleMessage("Password"),
        "label_phone": MessageLookupByLibrary.simpleMessage("Phone number"),
        "label_register": MessageLookupByLibrary.simpleMessage("Register"),
        "lang": MessageLookupByLibrary.simpleMessage("عربي"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "last": MessageLookupByLibrary.simpleMessage("Last"),
        "last_180_days": MessageLookupByLibrary.simpleMessage("Last 180 Days"),
        "last_30_days": MessageLookupByLibrary.simpleMessage("Last 30 Days"),
        "last_365_days": MessageLookupByLibrary.simpleMessage("Last 365 Days"),
        "last_7_days": MessageLookupByLibrary.simpleMessage("Last 7 Days"),
        "last_90_days": MessageLookupByLibrary.simpleMessage("Last 90 Days"),
        "last_name": MessageLookupByLibrary.simpleMessage("Last Name"),
        "launch_date": MessageLookupByLibrary.simpleMessage("Launch date"),
        "leave_message_warning":
            MessageLookupByLibrary.simpleMessage("Oh no! You\'re leaving..."),
        "leave_review": MessageLookupByLibrary.simpleMessage("Leave a Review"),
        "let_us_know_reason": MessageLookupByLibrary.simpleMessage(
            "Let us know why you are deleting this account ?"),
        "letter": MessageLookupByLibrary.simpleMessage("letter"),
        "level": MessageLookupByLibrary.simpleMessage("level"),
        "library": MessageLookupByLibrary.simpleMessage("Library"),
        "license_val": MessageLookupByLibrary.simpleMessage("Fal License"),
        "lifestyle": MessageLookupByLibrary.simpleMessage("Lifestyle"),
        "lift_to_record":
            MessageLookupByLibrary.simpleMessage("Lift to record"),
        "likes_avg_per_post":
            MessageLookupByLibrary.simpleMessage("Likes Avg. per Post"),
        "likes_growth": MessageLookupByLibrary.simpleMessage("Likes Growth"),
        "link": MessageLookupByLibrary.simpleMessage("Link"),
        "link_validate": MessageLookupByLibrary.simpleMessage(
            "Oops! The link you entered seems to be incorrect. Please check the URL and try again. If you need assistance, feel free to contact our support team"),
        "links": MessageLookupByLibrary.simpleMessage("Links"),
        "lists": MessageLookupByLibrary.simpleMessage("lists"),
        "live_location_active": m10,
        "live_location_duration_15":
            MessageLookupByLibrary.simpleMessage("15 minutes"),
        "live_location_duration_480":
            MessageLookupByLibrary.simpleMessage("8 hours"),
        "live_location_duration_60":
            MessageLookupByLibrary.simpleMessage("1 hour"),
        "live_location_message":
            MessageLookupByLibrary.simpleMessage("Live Location"),
        "live_location_started": MessageLookupByLibrary.simpleMessage(
            "Live location sharing started"),
        "live_location_stop_failed": MessageLookupByLibrary.simpleMessage(
            "Failed to stop live location"),
        "live_location_stopped_success": MessageLookupByLibrary.simpleMessage(
            "Live location sharing stopped"),
        "live_location_with_duration": m11,
        "loadingText": MessageLookupByLibrary.simpleMessage("Loading…"),
        "loading_gif": MessageLookupByLibrary.simpleMessage("Loading GIF..."),
        "loading_video":
            MessageLookupByLibrary.simpleMessage("Loading video..."),
        "locating": MessageLookupByLibrary.simpleMessage("Locating..."),
        "location": MessageLookupByLibrary.simpleMessage("Location"),
        "location_accuracy": m12,
        "location_error_general":
            MessageLookupByLibrary.simpleMessage("Failed to get location"),
        "location_expired": MessageLookupByLibrary.simpleMessage("Expired"),
        "location_message_title":
            MessageLookupByLibrary.simpleMessage("Location"),
        "location_permissions_denied": MessageLookupByLibrary.simpleMessage(
            "Location permissions are denied"),
        "location_prompt":
            MessageLookupByLibrary.simpleMessage("Where do you live?"),
        "location_sharing_stopped":
            MessageLookupByLibrary.simpleMessage("Location sharing stopped"),
        "location_unavailable":
            MessageLookupByLibrary.simpleMessage("Location unavailable"),
        "locations": MessageLookupByLibrary.simpleMessage("Locations"),
        "lock": MessageLookupByLibrary.simpleMessage("Lock"),
        "locked": MessageLookupByLibrary.simpleMessage("Locked"),
        "log_out": MessageLookupByLibrary.simpleMessage("Log Out?"),
        "log_out_label": MessageLookupByLibrary.simpleMessage("Log Out"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_for_current_or_new_campaigns": MessageLookupByLibrary.simpleMessage(
            "To access your current campaigns or create new ones, please log in to your account."),
        "login_for_current_or_new_chats": MessageLookupByLibrary.simpleMessage(
            "View your current conversations or start new ones with Stars by logging into your account."),
        "login_for_viewing_services": MessageLookupByLibrary.simpleMessage(
            "To browse all available Star services and choose the best fit for your ad campaigns, log into your account."),
        "login_message": MessageLookupByLibrary.simpleMessage("Log In"),
        "login_or_create_account":
            MessageLookupByLibrary.simpleMessage("Login or Create Account"),
        "login_or_register": MessageLookupByLibrary.simpleMessage(
            "Log in or create an account now to create and manage campaigns, request services, connect with influencers, and more..."),
        "login_subtitle": MessageLookupByLibrary.simpleMessage(
            "Enter your phone number to continue"),
        "login_to_access_campaigns": MessageLookupByLibrary.simpleMessage(
            "Log in to Access Your Campaigns"),
        "login_to_access_chats": MessageLookupByLibrary.simpleMessage(
            "Log in to Access Your Conversations"),
        "login_to_access_influencer_services":
            MessageLookupByLibrary.simpleMessage(
                "Log in to Access Star services"),
        "login_to_view_all_influencers": MessageLookupByLibrary.simpleMessage(
            "Login to access all influencers"),
        "login_to_view_all_influencers_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "To view all influencers and choose the most suitable for your advertising campaigns, please log in to your account."),
        "login_to_view_favorites": MessageLookupByLibrary.simpleMessage(
            "Login to view your favorites"),
        "login_to_view_favorites_subtitle": MessageLookupByLibrary.simpleMessage(
            "You can add influencers to favorites, view or manage them after logging in."),
        "login_to_view_influencers_services":
            MessageLookupByLibrary.simpleMessage(
                "Login to access influencer services"),
        "login_to_view_influencers_services_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "To view all available influencer services and choose the most suitable for your advertising campaigns, please log in to your account."),
        "login_verify": MessageLookupByLibrary.simpleMessage(
            "We\'ll send a verification code to your number so you can login"),
        "login_with_apple":
            MessageLookupByLibrary.simpleMessage("Log in with Apple"),
        "login_with_google":
            MessageLookupByLibrary.simpleMessage("Log in with Google"),
        "logo": MessageLookupByLibrary.simpleMessage("Logo"),
        "logo_image_size": MessageLookupByLibrary.simpleMessage(
            "Use a size that\'s at least 440 x 440 pixels"),
        "looking_for_partners": MessageLookupByLibrary.simpleMessage(
            "We are looking for partners , investors and C-Level executives to grow nojom."),
        "low": MessageLookupByLibrary.simpleMessage("Low"),
        "low_match": MessageLookupByLibrary.simpleMessage("Low Match"),
        "low_to_high": MessageLookupByLibrary.simpleMessage("low to high"),
        "macro": MessageLookupByLibrary.simpleMessage("Macro (100k - 1M)"),
        "mailValidation":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "make_finance": MessageLookupByLibrary.simpleMessage(
            "Make finance more accessible and share Minimize with stars / influencers and you\'ll receive 50 SAR to say thanks."),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "manage_lists_subtitle": MessageLookupByLibrary.simpleMessage(
            "Select the lists you want to add or remove the influencer from"),
        "manage_my_business":
            MessageLookupByLibrary.simpleMessage("Manage My Business"),
        "march": MessageLookupByLibrary.simpleMessage("March"),
        "mark_location":
            MessageLookupByLibrary.simpleMessage("Where are you located"),
        "mass_following":
            MessageLookupByLibrary.simpleMessage("Mass following"),
        "mass_following1":
            MessageLookupByLibrary.simpleMessage("Mass following accounts"),
        "mass_following_description": MessageLookupByLibrary.simpleMessage(
            "Accounts that follow more than 1500 profiles.\nPeople with a high number of followings are less likely to see the influencer’s posts, as platforms prioritize showing posts from accounts they engage with more.\nSome of these accounts may also use automated methods like follow/unfollow to force the influencer to follow them back."),
        "mawthooq": MessageLookupByLibrary.simpleMessage("Mawthooq"),
        "mawthooq_new_number":
            MessageLookupByLibrary.simpleMessage("Mawthooq New Number"),
        "mawthooq_number":
            MessageLookupByLibrary.simpleMessage("Mawthooq Number"),
        "max": MessageLookupByLibrary.simpleMessage("Max"),
        "maxSize": MessageLookupByLibrary.simpleMessage("Max size is 20mb"),
        "max_categories": MessageLookupByLibrary.simpleMessage(
            "Maximum of 3 categories to select"),
        "max_partners_number":
            MessageLookupByLibrary.simpleMessage("You can add up to 20 item"),
        "max_price": MessageLookupByLibrary.simpleMessage("Maximum Price"),
        "max_size": MessageLookupByLibrary.simpleMessage("Max size is"),
        "max_videos_and_images_number": MessageLookupByLibrary.simpleMessage(
            "You can add up to 20 videos & Image"),
        "max_videos_number":
            MessageLookupByLibrary.simpleMessage("You can add up to 20 videos"),
        "maximum": MessageLookupByLibrary.simpleMessage("Maximum"),
        "may": MessageLookupByLibrary.simpleMessage("May"),
        "mega_byte": MessageLookupByLibrary.simpleMessage("MB"),
        "members": MessageLookupByLibrary.simpleMessage("members"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "message_deleted_successfully": MessageLookupByLibrary.simpleMessage(
            "Message deleted successfully"),
        "message_forwarded_successfully": MessageLookupByLibrary.simpleMessage(
            "Message forwarded successfully"),
        "message_pinned_successfully":
            MessageLookupByLibrary.simpleMessage("Message pinned successfully"),
        "message_received":
            MessageLookupByLibrary.simpleMessage("Message received"),
        "message_text": MessageLookupByLibrary.simpleMessage("Message"),
        "message_unpinned_successfully": MessageLookupByLibrary.simpleMessage(
            "Message unpinned successfully"),
        "messages": MessageLookupByLibrary.simpleMessage("Messages"),
        "messages_deleted_successfully": m13,
        "messages_forwarded_successfully": m14,
        "messages_forwarded_to_chats": m15,
        "micro": MessageLookupByLibrary.simpleMessage("Micro (1,000 - 100k)"),
        "microphone_permission_required": MessageLookupByLibrary.simpleMessage(
            "Microphone permission is required to record voice messages"),
        "migrate_to_nogom_button":
            MessageLookupByLibrary.simpleMessage("Go to Nojom App"),
        "migrate_to_nogom_description": MessageLookupByLibrary.simpleMessage(
            "The Brand app has been merged with the Nojom app for a unified experience that brings companies and influencers together in one place.\nYou can continue using your current account and all your data through the Nojom app."),
        "migrate_to_nogom_subtitle": MessageLookupByLibrary.simpleMessage(
            "Your data is safe, continue with the same account in Nojom app."),
        "migrate_to_nogom_title":
            MessageLookupByLibrary.simpleMessage("We\'ve Moved to Nojom App!"),
        "million": MessageLookupByLibrary.simpleMessage("Million"),
        "million_symbol": MessageLookupByLibrary.simpleMessage("M"),
        "min": MessageLookupByLibrary.simpleMessage("Min"),
        "min_amount":
            MessageLookupByLibrary.simpleMessage("Minimum amount is 100 "),
        "min_price": MessageLookupByLibrary.simpleMessage("Minimum Price"),
        "minimum": MessageLookupByLibrary.simpleMessage("Minimum"),
        "minimum_size": MessageLookupByLibrary.simpleMessage(
            "Use a size that\'s at least "),
        "mints": MessageLookupByLibrary.simpleMessage(" Mins"),
        "mobil": MessageLookupByLibrary.simpleMessage("Mobile"),
        "modern": MessageLookupByLibrary.simpleMessage("New"),
        "modify_sections_order": MessageLookupByLibrary.simpleMessage(
            "Modify the order of sections"),
        "money_back_guarantee":
            MessageLookupByLibrary.simpleMessage("100% Money Back Guarantee"),
        "month": MessageLookupByLibrary.simpleMessage("MM"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "more_brand_info": MessageLookupByLibrary.simpleMessage(
            "The more information brands get about your account, the more tasks they will be able to offer you."),
        "more_terms_of_use":
            MessageLookupByLibrary.simpleMessage("Terms of Use."),
        "mosoque_exist": MessageLookupByLibrary.simpleMessage("Mawthooq exist"),
        "music": MessageLookupByLibrary.simpleMessage("Music"),
        "mute": MessageLookupByLibrary.simpleMessage("Mute"),
        "myAdPrices": MessageLookupByLibrary.simpleMessage("My Ad Prices"),
        "myCampaigns": MessageLookupByLibrary.simpleMessage("My Campaigns"),
        "myClient": MessageLookupByLibrary.simpleMessage("My Client"),
        "myProfile": MessageLookupByLibrary.simpleMessage("My profile"),
        "myRates": MessageLookupByLibrary.simpleMessage("My Rates"),
        "my_account": MessageLookupByLibrary.simpleMessage("My Account"),
        "my_ads": MessageLookupByLibrary.simpleMessage("My Ads"),
        "my_available_balance":
            MessageLookupByLibrary.simpleMessage("My Available Balance"),
        "my_campaign": MessageLookupByLibrary.simpleMessage("Campaign"),
        "my_hired": MessageLookupByLibrary.simpleMessage("Hired"),
        "my_invoices": MessageLookupByLibrary.simpleMessage("My Bills"),
        "my_product": MessageLookupByLibrary.simpleMessage("My Product"),
        "my_profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "my_public_profile":
            MessageLookupByLibrary.simpleMessage("My Public Profile"),
        "my_settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "my_store": MessageLookupByLibrary.simpleMessage("My Store"),
        "my_stores": MessageLookupByLibrary.simpleMessage("My Stores"),
        "my_wallet": MessageLookupByLibrary.simpleMessage("My Wallet"),
        "my_wallet_and_account":
            MessageLookupByLibrary.simpleMessage("My wallet & Account"),
        "my_work_and_ads":
            MessageLookupByLibrary.simpleMessage("My Work and Ads"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "Should be more than 2 and less than 30"),
        "name_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Name can\'t be empty"),
        "nano": MessageLookupByLibrary.simpleMessage("Nano (0 - 1,000)"),
        "nearby_places": MessageLookupByLibrary.simpleMessage("Nearby places"),
        "need_help_contact_support": MessageLookupByLibrary.simpleMessage(
            "Need help? Contact with  our support team"),
        "need_more_than":
            MessageLookupByLibrary.simpleMessage("You need more than"),
        "negative": MessageLookupByLibrary.simpleMessage("Negative"),
        "neutral": MessageLookupByLibrary.simpleMessage("Neutral"),
        "new_account":
            MessageLookupByLibrary.simpleMessage("Create new account?"),
        "new_campaign_will_be_created": MessageLookupByLibrary.simpleMessage(
            "A new campaign will be created and the influencer will be added to it"),
        "new_email": MessageLookupByLibrary.simpleMessage("New email"),
        "new_job_post": MessageLookupByLibrary.simpleMessage(
            "New job post - Customer Service"),
        "new_opportunities":
            MessageLookupByLibrary.simpleMessage("New Opportunities"),
        "new_pass_message": MessageLookupByLibrary.simpleMessage(
            "Your new password must be different from previously used passwords."),
        "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
        "new_phone_number":
            MessageLookupByLibrary.simpleMessage("New Phone Number"),
        "new_sign_up": MessageLookupByLibrary.simpleMessage("Sign up"),
        "newest": MessageLookupByLibrary.simpleMessage("Newest"),
        "news_accounts": MessageLookupByLibrary.simpleMessage("News Accounts"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noData": MessageLookupByLibrary.simpleMessage("No Data"),
        "noDepositYet":
            MessageLookupByLibrary.simpleMessage("No deposit have made yet."),
        "noFiles": MessageLookupByLibrary.simpleMessage("No Files"),
        "noFilesDescription": MessageLookupByLibrary.simpleMessage(
            "All attachments files with this campaign will be displayed here"),
        "noResults": MessageLookupByLibrary.simpleMessage("No Results"),
        "no_account": MessageLookupByLibrary.simpleMessage("No account"),
        "no_account_text": MessageLookupByLibrary.simpleMessage(
            "All accounts will displayed here"),
        "no_accounts": MessageLookupByLibrary.simpleMessage("No Accounts"),
        "no_address_available":
            MessageLookupByLibrary.simpleMessage("No address available"),
        "no_attachments_to_share":
            MessageLookupByLibrary.simpleMessage("No attachments to share"),
        "no_bidding_campaign": MessageLookupByLibrary.simpleMessage(
            "All bidding Campaigns will displayed\n here"),
        "no_bids": MessageLookupByLibrary.simpleMessage("No Bids"),
        "no_campaign_in_progress":
            MessageLookupByLibrary.simpleMessage("No Campaigns in Progress"),
        "no_campaigns":
            MessageLookupByLibrary.simpleMessage("There is no campaigns here"),
        "no_campaigns_message":
            MessageLookupByLibrary.simpleMessage("There are no Campaigns Here"),
        "no_chats_here":
            MessageLookupByLibrary.simpleMessage("There are no messages Here"),
        "no_cities_found":
            MessageLookupByLibrary.simpleMessage("No Cities Found"),
        "no_clients_yet":
            MessageLookupByLibrary.simpleMessage("No clients yet"),
        "no_closed_campaign":
            MessageLookupByLibrary.simpleMessage("No Past Campaigns"),
        "no_closed_campaign_message": MessageLookupByLibrary.simpleMessage(
            "All  Past Campaign will be dispalyed\n here."),
        "no_conversations":
            MessageLookupByLibrary.simpleMessage("no conversations found yet"),
        "no_countries_found":
            MessageLookupByLibrary.simpleMessage("No Countries Found"),
        "no_data_has_been_changed":
            MessageLookupByLibrary.simpleMessage("No data has been changed"),
        "no_filter_cities_found": MessageLookupByLibrary.simpleMessage(
            "No cities  for this selected country"),
        "no_filter_data_subtitle": MessageLookupByLibrary.simpleMessage(
            "Try adjusting your filter options to get more results."),
        "no_filter_data_title": MessageLookupByLibrary.simpleMessage(
            "No influencers match the current filter."),
        "no_income": MessageLookupByLibrary.simpleMessage("No Income Balance"),
        "no_income_text": MessageLookupByLibrary.simpleMessage(
            "All incoming balance will displayed here"),
        "no_industry":
            MessageLookupByLibrary.simpleMessage("No Industry Found"),
        "no_internet_connection":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "no_invoices": MessageLookupByLibrary.simpleMessage("No Bills"),
        "no_links": MessageLookupByLibrary.simpleMessage("There are no links."),
        "no_messages": MessageLookupByLibrary.simpleMessage("No Messages"),
        "no_messages_yet":
            MessageLookupByLibrary.simpleMessage("No messages yet"),
        "no_offer": MessageLookupByLibrary.simpleMessage("No Offers"),
        "no_offer_campaign": MessageLookupByLibrary.simpleMessage(
            "All Offers will be displayed here."),
        "no_orders_available":
            MessageLookupByLibrary.simpleMessage("No orders available"),
        "no_payment_have_made": MessageLookupByLibrary.simpleMessage(
            "No payments have been made yet."),
        "no_photo_albums_found":
            MessageLookupByLibrary.simpleMessage("No photo albums found"),
        "no_places_found":
            MessageLookupByLibrary.simpleMessage("No places found"),
        "no_platforms":
            MessageLookupByLibrary.simpleMessage("No platforms available"),
        "no_previous_ads":
            MessageLookupByLibrary.simpleMessage("No previous ads"),
        "no_prices_added": MessageLookupByLibrary.simpleMessage(
            "The influencer hasn\'t added their ad prices yet."),
        "no_reason_at_all": MessageLookupByLibrary.simpleMessage(
            "I just want to delete my account for no reason at all"),
        "no_recent_searches":
            MessageLookupByLibrary.simpleMessage("No recent searches"),
        "no_response_meaning": MessageLookupByLibrary.simpleMessage(
            "If you haven\'t heard from us within 5-15 business day , please assume that we are not satisfied with the information you provided to us or deem your profile scores low , especially with verifications."),
        "no_results_match_search": MessageLookupByLibrary.simpleMessage(
            "No results match your search."),
        "no_reviews": MessageLookupByLibrary.simpleMessage("No reviews"),
        "no_reviews_message": MessageLookupByLibrary.simpleMessage(
            "All Reviews will disabled here"),
        "no_services": MessageLookupByLibrary.simpleMessage("No Services"),
        "no_services_available":
            MessageLookupByLibrary.simpleMessage("No Services Available"),
        "no_services_here":
            MessageLookupByLibrary.simpleMessage("There are no services Here"),
        "no_stars_found":
            MessageLookupByLibrary.simpleMessage("No stars found"),
        "no_tags_found": MessageLookupByLibrary.simpleMessage("No Tags Found"),
        "no_title": MessageLookupByLibrary.simpleMessage("No Title"),
        "no_transactions":
            MessageLookupByLibrary.simpleMessage("No transactions"),
        "no_verified_method":
            MessageLookupByLibrary.simpleMessage("No verified method found"),
        "no_video_albums_found":
            MessageLookupByLibrary.simpleMessage("No video albums found"),
        "no_withdraw":
            MessageLookupByLibrary.simpleMessage("No Withdraw Balance"),
        "no_withdraw_text": MessageLookupByLibrary.simpleMessage(
            "All withdraw balance will displayed here"),
        "nojom_ceo": MessageLookupByLibrary.simpleMessage("Nojom CEO"),
        "nojom_get": MessageLookupByLibrary.simpleMessage("nojom will get"),
        "not_Available": MessageLookupByLibrary.simpleMessage("Not Available"),
        "not_determined":
            MessageLookupByLibrary.simpleMessage("Not Determined"),
        "not_found": MessageLookupByLibrary.simpleMessage("Not Available"),
        "not_started": MessageLookupByLibrary.simpleMessage("Not Started "),
        "not_title": MessageLookupByLibrary.simpleMessage("No title"),
        "not_verified": MessageLookupByLibrary.simpleMessage("Not Verified"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "notes": MessageLookupByLibrary.simpleMessage("Notes"),
        "notes_for_client":
            MessageLookupByLibrary.simpleMessage("Client Notes"),
        "notes_optional": MessageLookupByLibrary.simpleMessage("(Optional)"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "november": MessageLookupByLibrary.simpleMessage("November"),
        "num_of_followers":
            MessageLookupByLibrary.simpleMessage("Num of Followers (optional)"),
        "number_of_followers":
            MessageLookupByLibrary.simpleMessage("Number of followers"),
        "number_of_times":
            MessageLookupByLibrary.simpleMessage("Number of Times (optional)"),
        "october": MessageLookupByLibrary.simpleMessage("October"),
        "offer": MessageLookupByLibrary.simpleMessage("offer"),
        "offers": MessageLookupByLibrary.simpleMessage("Offers"),
        "offline": MessageLookupByLibrary.simpleMessage("Offline"),
        "ok": MessageLookupByLibrary.simpleMessage("Okay"),
        "ok_txt": MessageLookupByLibrary.simpleMessage("Ok"),
        "on_update_email":
            MessageLookupByLibrary.simpleMessage(" on \nupdating your Email!"),
        "on_update_phone":
            MessageLookupByLibrary.simpleMessage("on updating your phone!"),
        "onceYuoSubmitCampaign": MessageLookupByLibrary.simpleMessage(
            "Once you submit your campaign, Client will be releasing the deposit"),
        "one_contract": MessageLookupByLibrary.simpleMessage("Contract"),
        "only_me": MessageLookupByLibrary.simpleMessage("Only me"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "open_in_maps": MessageLookupByLibrary.simpleMessage("Open in Maps"),
        "opening_file": m16,
        "option": MessageLookupByLibrary.simpleMessage("optional"),
        "optional": MessageLookupByLibrary.simpleMessage("Optional"),
        "options_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "orderAndPay": MessageLookupByLibrary.simpleMessage("Order and Pay"),
        "order_canceled": MessageLookupByLibrary.simpleMessage(
            "Influencer declined (Canceled)"),
        "order_completed":
            MessageLookupByLibrary.simpleMessage("You approved (Completed)"),
        "order_created": MessageLookupByLibrary.simpleMessage(
            "Add influencers to your campaign"),
        "order_delivered": MessageLookupByLibrary.simpleMessage(
            "Delivered (Waiting your approval)"),
        "order_delivery_date":
            MessageLookupByLibrary.simpleMessage("Order Delivery Date"),
        "order_id": MessageLookupByLibrary.simpleMessage("Order ID"),
        "order_in_progress": MessageLookupByLibrary.simpleMessage(
            "Influencer approved (In progress)"),
        "order_now": MessageLookupByLibrary.simpleMessage("Order Now"),
        "order_requested": MessageLookupByLibrary.simpleMessage(
            "Request sent (Awaiting approval)"),
        "order_title": MessageLookupByLibrary.simpleMessage("Order Title"),
        "order_total": MessageLookupByLibrary.simpleMessage("Order Total"),
        "order_total_price": MessageLookupByLibrary.simpleMessage("Total"),
        "orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "orders_details": MessageLookupByLibrary.simpleMessage("Order Details"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "otp_send": MessageLookupByLibrary.simpleMessage("OTP Send Successful"),
        "overview": MessageLookupByLibrary.simpleMessage("Overview"),
        "package": MessageLookupByLibrary.simpleMessage("Package"),
        "page": MessageLookupByLibrary.simpleMessage(" page."),
        "paid": MessageLookupByLibrary.simpleMessage("Paid"),
        "paid_for_campaign":
            MessageLookupByLibrary.simpleMessage("Paid for campaign ID"),
        "paid_to_you": MessageLookupByLibrary.simpleMessage("Paid to you"),
        "partner_with_us":
            MessageLookupByLibrary.simpleMessage("Partner with us"),
        "partners": MessageLookupByLibrary.simpleMessage("Partners"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "Should have Upper and Lower case, numbers and special characters"),
        "pass_reset_success":
            MessageLookupByLibrary.simpleMessage("Password reset successful"),
        "password_strength":
            MessageLookupByLibrary.simpleMessage("Password strength:"),
        "password_strength_description": MessageLookupByLibrary.simpleMessage(
            "Use at least 8 characters. Don\'t use a password from another site, or something too obvious like your pet\'s name."),
        "password_validation_message": MessageLookupByLibrary.simpleMessage(
            "Use at least 8 characters. Don\'t use a password from another site, or something too obvious."),
        "pastCampaigns": MessageLookupByLibrary.simpleMessage("Past Campaigns"),
        "past_campaigns":
            MessageLookupByLibrary.simpleMessage("Past Campaigns"),
        "pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "pay_description": MessageLookupByLibrary.simpleMessage(
            "You only have to pay for the campaign when it has been completed and you are 100% satisfied."),
        "pay_using": MessageLookupByLibrary.simpleMessage("Pay Using"),
        "pay_with": MessageLookupByLibrary.simpleMessage("Pay via"),
        "pay_with_card": MessageLookupByLibrary.simpleMessage("Pay With Card"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "paymentDetails":
            MessageLookupByLibrary.simpleMessage("Payment Details"),
        "paymentRemindText": MessageLookupByLibrary.simpleMessage(
            "Please remind your client to deposit payment so you can start working"),
        "paymentTermsText": MessageLookupByLibrary.simpleMessage(
            "All deposits and fees are refundable subject to our "),
        "payment_card_details":
            MessageLookupByLibrary.simpleMessage("Card Details"),
        "payment_failed":
            MessageLookupByLibrary.simpleMessage("Payment Failed"),
        "payment_success_desc": MessageLookupByLibrary.simpleMessage(
            "The payment has been confirmed, and the Star has been successfully added to your campaign. Waiting for the Star\'s response to the campaign-- you can now proceed with managing and executing the campaign."),
        "payment_success_title": MessageLookupByLibrary.simpleMessage(
            "Payment Successful & Star Added!"),
        "payments": MessageLookupByLibrary.simpleMessage("Payments"),
        "pending": MessageLookupByLibrary.simpleMessage("Pending"),
        "pending_balance":
            MessageLookupByLibrary.simpleMessage("Pending Balance"),
        "per_friend_reward":
            MessageLookupByLibrary.simpleMessage("Get 10 SAR for every friend"),
        "permission_denied_photos": MessageLookupByLibrary.simpleMessage(
            "Permission denied to access photos"),
        "permission_denied_videos": MessageLookupByLibrary.simpleMessage(
            "Permission denied to access videos"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phoneValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid mobile phone"),
        "phone_already_verified": MessageLookupByLibrary.simpleMessage(
            "You already verified phone number"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Phone number"),
        "phone_verification":
            MessageLookupByLibrary.simpleMessage("Phone number verification"),
        "photo_and_video_library":
            MessageLookupByLibrary.simpleMessage("Photo & Video Library"),
        "photos": MessageLookupByLibrary.simpleMessage("Photos"),
        "pick": MessageLookupByLibrary.simpleMessage("Pick"),
        "pin": MessageLookupByLibrary.simpleMessage("Pin"),
        "pin_limit": MessageLookupByLibrary.simpleMessage(
            "You can pin only 3 conversations"),
        "pin_limit_reached": MessageLookupByLibrary.simpleMessage(
            "Remove a currently pinned conversation to pin this one instead."),
        "pin_message": MessageLookupByLibrary.simpleMessage("Pin Message"),
        "pin_message_description": MessageLookupByLibrary.simpleMessage(
            "This message will be pinned to the top of the chat for everyone."),
        "pixels": MessageLookupByLibrary.simpleMessage("pixels "),
        "placeBid": MessageLookupByLibrary.simpleMessage("Place a Bild"),
        "placeBidOn": MessageLookupByLibrary.simpleMessage("Place a bid on"),
        "place_location_shared":
            MessageLookupByLibrary.simpleMessage("Location shared"),
        "platform": MessageLookupByLibrary.simpleMessage("Platform"),
        "platform_name":
            MessageLookupByLibrary.simpleMessage("Name of Platform"),
        "platforms": MessageLookupByLibrary.simpleMessage("Platforms"),
        "please": MessageLookupByLibrary.simpleMessage("Please"),
        "please_add_profile_photo":
            MessageLookupByLibrary.simpleMessage("Please add profile photo"),
        "please_complete_info": MessageLookupByLibrary.simpleMessage(
            "Please complete  information"),
        "please_enter": MessageLookupByLibrary.simpleMessage("Please enter"),
        "please_enter_code": MessageLookupByLibrary.simpleMessage(
            "Please enter the code we just sent to phone"),
        "please_enter_valid_phone_number": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid phone number."),
        "please_login": MessageLookupByLibrary.simpleMessage(
            "Please login or register to collaborate, view profiles, chat and more..."),
        "please_select_attachment":
            MessageLookupByLibrary.simpleMessage("Please select attachment"),
        "please_select_country_first": MessageLookupByLibrary.simpleMessage(
            "Please select a country first"),
        "please_select_referral": MessageLookupByLibrary.simpleMessage(
            "Please select How did you hear about us"),
        "please_select_service": MessageLookupByLibrary.simpleMessage(
            "Please select What\'s your most important service"),
        "plus_1m": MessageLookupByLibrary.simpleMessage("+1M"),
        "plus_five_million": MessageLookupByLibrary.simpleMessage("5M+"),
        "points": MessageLookupByLibrary.simpleMessage("POINTS "),
        "points_per_sar": MessageLookupByLibrary.simpleMessage(
            "4 points with every sar you spend"),
        "policy_pages": MessageLookupByLibrary.simpleMessage("Policy Pages"),
        "poor": MessageLookupByLibrary.simpleMessage("Poor"),
        "poor_match": MessageLookupByLibrary.simpleMessage("Poor Match"),
        "popular_countries":
            MessageLookupByLibrary.simpleMessage("Popular Countries"),
        "popular_location":
            MessageLookupByLibrary.simpleMessage("Popular Locations"),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portfolio"),
        "portfolio_empty": MessageLookupByLibrary.simpleMessage(
            "Boost your collaboration opportunities by adding one of your successful campaign video to your portfolio"),
        "portfolio_limit": MessageLookupByLibrary.simpleMessage(
            "You can add up to 50 videos & Image"),
        "positive": MessageLookupByLibrary.simpleMessage("Positive"),
        "post": MessageLookupByLibrary.simpleMessage("Post"),
        "post_camp": MessageLookupByLibrary.simpleMessage("Post a Campaign"),
        "post_camp_free":
            MessageLookupByLibrary.simpleMessage("POST YOUR CAMPAIGN (free)"),
        "post_frequency":
            MessageLookupByLibrary.simpleMessage("Post Frequency"),
        "posts": MessageLookupByLibrary.simpleMessage("posts"),
        "prepareCampaignTitle": MessageLookupByLibrary.simpleMessage(
            "We\'re preparing your campaign data"),
        "preparingYourCampaignData": MessageLookupByLibrary.simpleMessage(
            "We\'re preparing your campaign data"),
        "press_again_to_exit":
            MessageLookupByLibrary.simpleMessage("Press back again to exit"),
        "preview": MessageLookupByLibrary.simpleMessage("Preview"),
        "previous": MessageLookupByLibrary.simpleMessage("Previous"),
        "previous_ads_will_appear_here": MessageLookupByLibrary.simpleMessage(
            "Previous ads will appear here"),
        "previous_clients":
            MessageLookupByLibrary.simpleMessage("Previous Clients"),
        "previous_work": MessageLookupByLibrary.simpleMessage("Previous work"),
        "previous_work_description": MessageLookupByLibrary.simpleMessage(
            "Evaluates the influencer’s past collaborations with brands in the same campaign domain."),
        "price": MessageLookupByLibrary.simpleMessage("Price"),
        "price_range": MessageLookupByLibrary.simpleMessage("Price Range"),
        "price_required":
            MessageLookupByLibrary.simpleMessage("Price is required"),
        "price_will_be_unified_when_sending_offer":
            MessageLookupByLibrary.simpleMessage(
                "Price will display to the customer as one price for all platforms."),
        "primary": MessageLookupByLibrary.simpleMessage("Primary"),
        "primary_account":
            MessageLookupByLibrary.simpleMessage("Primary account"),
        "primary_bank_account":
            MessageLookupByLibrary.simpleMessage("Primary Bank Account"),
        "privacy_policy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "private_info": MessageLookupByLibrary.simpleMessage("Private info"),
        "private_information":
            MessageLookupByLibrary.simpleMessage("Private Information"),
        "private_to_me":
            MessageLookupByLibrary.simpleMessage("Private, visible only to me"),
        "product": MessageLookupByLibrary.simpleMessage("Product"),
        "product_url": MessageLookupByLibrary.simpleMessage("Product URL"),
        "products": MessageLookupByLibrary.simpleMessage("Products"),
        "products_max_number":
            MessageLookupByLibrary.simpleMessage("You can add up to 20 item"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profile_info": MessageLookupByLibrary.simpleMessage("Profile Info"),
        "profile_username": MessageLookupByLibrary.simpleMessage(
            "This is the username that will appear on your profile"),
        "profit_100_percent": MessageLookupByLibrary.simpleMessage("Profit"),
        "project": MessageLookupByLibrary.simpleMessage("project"),
        "project_closed":
            MessageLookupByLibrary.simpleMessage("Project closed"),
        "project_or_store_name":
            MessageLookupByLibrary.simpleMessage("Your project or store name"),
        "proof_updated":
            MessageLookupByLibrary.simpleMessage("Proof successfully Updated"),
        "proposed_campaign_budget":
            MessageLookupByLibrary.simpleMessage("Proposed Budget"),
        "provide_your_crNumber": MessageLookupByLibrary.simpleMessage(
            "Please provide your CR number so that we can verify your account. This number will be kept private and will be used for verification purposes"),
        "provide_your_vat_number": MessageLookupByLibrary.simpleMessage(
            "Please provide your VAT number so that we can verify your account. This number will be kept private and will be used for verification purposes"),
        "public": MessageLookupByLibrary.simpleMessage("Public"),
        "public_profile":
            MessageLookupByLibrary.simpleMessage("Public Profile"),
        "public_profile_desc": MessageLookupByLibrary.simpleMessage(
            "Public profile is visible to anyone, even outside Nojom. Use this link as your bio link on all platforms"),
        "public_profile_pic": MessageLookupByLibrary.simpleMessage(
            "Add your public profile picture."),
        "purchase_price":
            MessageLookupByLibrary.simpleMessage("Purchase Price"),
        "quantity": MessageLookupByLibrary.simpleMessage("Quantity"),
        "rate": MessageLookupByLibrary.simpleMessage("Rate"),
        "rateTheClient":
            MessageLookupByLibrary.simpleMessage("Rate the Client"),
        "rate_app": MessageLookupByLibrary.simpleMessage("Rate App"),
        "rate_order": MessageLookupByLibrary.simpleMessage("Rate Order"),
        "rating_prompt": MessageLookupByLibrary.simpleMessage(
            "What is your rating for this star?"),
        "re_send_code": MessageLookupByLibrary.simpleMessage("Resend code"),
        "reaction_angry": MessageLookupByLibrary.simpleMessage("Angry"),
        "reaction_haha": MessageLookupByLibrary.simpleMessage("Haha"),
        "reaction_like": MessageLookupByLibrary.simpleMessage("Like"),
        "reaction_love": MessageLookupByLibrary.simpleMessage("Love"),
        "reaction_sad": MessageLookupByLibrary.simpleMessage("Sad"),
        "reaction_wow": MessageLookupByLibrary.simpleMessage("Wow"),
        "read": MessageLookupByLibrary.simpleMessage("Read"),
        "read_less": MessageLookupByLibrary.simpleMessage(" Read less"),
        "read_more": MessageLookupByLibrary.simpleMessage(" Read more"),
        "ready_service_exists": MessageLookupByLibrary.simpleMessage(
            "A ready-made service already exists for this service"),
        "real_people": MessageLookupByLibrary.simpleMessage("Real people"),
        "receiveTheCampaign":
            MessageLookupByLibrary.simpleMessage("Receive the campaign"),
        "received": MessageLookupByLibrary.simpleMessage("Received"),
        "recent_searches":
            MessageLookupByLibrary.simpleMessage("Recent Searches"),
        "recent_transactions":
            MessageLookupByLibrary.simpleMessage("Transactions"),
        "recording": MessageLookupByLibrary.simpleMessage("Recording"),
        "recording_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "recording_in_progress":
            MessageLookupByLibrary.simpleMessage("Recording..."),
        "recording_send": MessageLookupByLibrary.simpleMessage("Send"),
        "referral_benefits": MessageLookupByLibrary.simpleMessage(
            "Send your special promo code , or your referral link to your friends, Once they use this code or follow the link to place their first order at nojom they will receive 10 SAR off the price and you will get 10 SAR to your balance. Read"),
        "referral_prompt":
            MessageLookupByLibrary.simpleMessage("How did you hear about us?"),
        "referral_reward": MessageLookupByLibrary.simpleMessage(
            "Anyone who uses your coupon or QR follows your referral link will get 10 SAR off on their first campaign."),
        "refund": MessageLookupByLibrary.simpleMessage("Refund"),
        "register_interest_button":
            MessageLookupByLibrary.simpleMessage("Register Interest in Prices"),
        "register_interest_message": MessageLookupByLibrary.simpleMessage(
            "Register your interest to get notified once the influencer adds their prices."),
        "register_now":
            MessageLookupByLibrary.simpleMessage("Register Now or Log In"),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "rejected": MessageLookupByLibrary.simpleMessage("Rejected"),
        "release_amount":
            MessageLookupByLibrary.simpleMessage("Release Amount"),
        "released": MessageLookupByLibrary.simpleMessage("Released"),
        "released_done": MessageLookupByLibrary.simpleMessage("Released"),
        "released_money":
            MessageLookupByLibrary.simpleMessage("Release your money"),
        "remain_balance":
            MessageLookupByLibrary.simpleMessage("Remaining Balance"),
        "remaining": MessageLookupByLibrary.simpleMessage("Remaining"),
        "remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "remove_1": MessageLookupByLibrary.simpleMessage("Remove"),
        "remove_2": MessageLookupByLibrary.simpleMessage(
            "from the chat and delete all chat and data between us"),
        "removed_from_draft_prefix": MessageLookupByLibrary.simpleMessage(""),
        "removed_from_draft_suffix":
            MessageLookupByLibrary.simpleMessage("has been removed from draft"),
        "rename": MessageLookupByLibrary.simpleMessage("Rename"),
        "rename_list": MessageLookupByLibrary.simpleMessage("Rename List"),
        "reply": MessageLookupByLibrary.simpleMessage("Reply"),
        "report": MessageLookupByLibrary.simpleMessage("Report"),
        "report_access": MessageLookupByLibrary.simpleMessage(
            "Need to report access to this profile? Visit our"),
        "report_block": MessageLookupByLibrary.simpleMessage("Report & Block"),
        "report_campaign":
            MessageLookupByLibrary.simpleMessage("Report Campaign"),
        "report_profile":
            MessageLookupByLibrary.simpleMessage("Report Profile"),
        "represent_user_name": MessageLookupByLibrary.simpleMessage(
            "This will be your Nojom link to showcase everything. Please choose a good username."),
        "requestAd": MessageLookupByLibrary.simpleMessage("Request Ad"),
        "request_ad": MessageLookupByLibrary.simpleMessage("Request Ad"),
        "request_ad_description": MessageLookupByLibrary.simpleMessage(
            "Enjoy a smooth experience in requesting influencer services, ensuring a secure and professional collaboration."),
        "request_an_ad_in_minutes":
            MessageLookupByLibrary.simpleMessage("Request an ad in minutes"),
        "request_approved":
            MessageLookupByLibrary.simpleMessage("Your request is approved"),
        "request_approved_message": MessageLookupByLibrary.simpleMessage(
            "The request has been approved, and the amount has been released to the star for withdrawal. Thank you for using the Nojom platform! For any inquiries, contact customer service."),
        "request_pending":
            MessageLookupByLibrary.simpleMessage("Your request is Pending"),
        "request_rejected":
            MessageLookupByLibrary.simpleMessage("Your request is Rejected"),
        "request_submitted": MessageLookupByLibrary.simpleMessage(
            "Your request has been successfully submitted. We are waiting for the star to approve the order."),
        "requested": MessageLookupByLibrary.simpleMessage("Requested"),
        "requested_request": MessageLookupByLibrary.simpleMessage("Requested"),
        "resend_code": MessageLookupByLibrary.simpleMessage("Resend Code"),
        "resend_code_via_whatsapp":
            MessageLookupByLibrary.simpleMessage("Resend code via WhatsApp"),
        "resend_email": MessageLookupByLibrary.simpleMessage("Resend email"),
        "resend_in": MessageLookupByLibrary.simpleMessage("Resend in"),
        "resend_submit_verification": MessageLookupByLibrary.simpleMessage(
            "Resend Submit for verification"),
        "reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "reset_pass": MessageLookupByLibrary.simpleMessage("Reset password"),
        "respond_within":
            MessageLookupByLibrary.simpleMessage("We will respond within"),
        "restricted_members":
            MessageLookupByLibrary.simpleMessage("Restricted to brand members"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "review_our": MessageLookupByLibrary.simpleMessage("Please review our"),
        "review_reward_desc": MessageLookupByLibrary.simpleMessage(
            "Get 10 SAR after completing all of the reviews on all of the review sites"),
        "review_reward_title":
            MessageLookupByLibrary.simpleMessage("Get 2 SAR for every review"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "rewards": MessageLookupByLibrary.simpleMessage("Rewards"),
        "reword": MessageLookupByLibrary.simpleMessage("Reword"),
        "riyadh_influencers":
            MessageLookupByLibrary.simpleMessage("Influencers in Riyadh"),
        "ryal": MessageLookupByLibrary.simpleMessage("SAR"),
        "sar": MessageLookupByLibrary.simpleMessage("﷼"),
        "sar_currency": MessageLookupByLibrary.simpleMessage("SAR"),
        "saudi_riyal":
            MessageLookupByLibrary.simpleMessage("Saudi Riyal (SAR)"),
        "saudi_vat": MessageLookupByLibrary.simpleMessage("Saudi VAT"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "save_changes": MessageLookupByLibrary.simpleMessage("Save Changes"),
        "save_draft": MessageLookupByLibrary.simpleMessage("Save Draft"),
        "save_selected": MessageLookupByLibrary.simpleMessage("Save Selected"),
        "saved": MessageLookupByLibrary.simpleMessage("Saved"),
        "saved_story_views_by_country": MessageLookupByLibrary.simpleMessage(
            "Saved Story Views by Country"),
        "saved_story_views_by_gender":
            MessageLookupByLibrary.simpleMessage("Saved Story Views by Gender"),
        "scammer": MessageLookupByLibrary.simpleMessage("Scammer"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "search_address":
            MessageLookupByLibrary.simpleMessage("Search or enter an address"),
        "search_and_collaborate_with_stars":
            MessageLookupByLibrary.simpleMessage(
                "Search and collaborate with stars"),
        "search_failed": MessageLookupByLibrary.simpleMessage("Search failed"),
        "search_for_a_star":
            MessageLookupByLibrary.simpleMessage("Search for a star"),
        "search_influencer_classification":
            MessageLookupByLibrary.simpleMessage("Search for a Category"),
        "second": MessageLookupByLibrary.simpleMessage(" Sec"),
        "seconds": MessageLookupByLibrary.simpleMessage("s"),
        "security_code": MessageLookupByLibrary.simpleMessage("Security Code"),
        "security_code_verify": MessageLookupByLibrary.simpleMessage(
            "Enter the 6 digit code we sent via email and your new password"),
        "see_account":
            MessageLookupByLibrary.simpleMessage("to see your account"),
        "see_all_files": MessageLookupByLibrary.simpleMessage("See All Files"),
        "see_details":
            MessageLookupByLibrary.simpleMessage("See step by step details"),
        "see_how_it_work":
            MessageLookupByLibrary.simpleMessage("See how it it works"),
        "select": MessageLookupByLibrary.simpleMessage("Select"),
        "select_about_us":
            MessageLookupByLibrary.simpleMessage("Please select about us"),
        "select_at_least_one_channel": MessageLookupByLibrary.simpleMessage(
            "Please select at least one channel"),
        "select_bank": MessageLookupByLibrary.simpleMessage("Select bank"),
        "select_category":
            MessageLookupByLibrary.simpleMessage("Select Category"),
        "select_city": MessageLookupByLibrary.simpleMessage("Select City"),
        "select_contact":
            MessageLookupByLibrary.simpleMessage("Select contact"),
        "select_country":
            MessageLookupByLibrary.simpleMessage("Select Country"),
        "select_currency":
            MessageLookupByLibrary.simpleMessage("Select Currency"),
        "select_date": MessageLookupByLibrary.simpleMessage("Select Date"),
        "select_image": MessageLookupByLibrary.simpleMessage("Select Image"),
        "select_option": MessageLookupByLibrary.simpleMessage(
            "Select option to select your ID picture"),
        "select_orders": MessageLookupByLibrary.simpleMessage("Select Orders"),
        "select_orders_to_add": MessageLookupByLibrary.simpleMessage(
            "Select orders to add to campaign"),
        "select_paid_account": MessageLookupByLibrary.simpleMessage(
            "Please select one account for get paid"),
        "select_reason":
            MessageLookupByLibrary.simpleMessage("Please select reason"),
        "select_refund_reason":
            MessageLookupByLibrary.simpleMessage("Please select single reason"),
        "select_services":
            MessageLookupByLibrary.simpleMessage("Select Services"),
        "select_tags": MessageLookupByLibrary.simpleMessage("Select Tags"),
        "select_time": MessageLookupByLibrary.simpleMessage("Select Time"),
        "select_upload_file_option":
            MessageLookupByLibrary.simpleMessage("Select your option!"),
        "selected": MessageLookupByLibrary.simpleMessage("selected"),
        "selected_messages_count": m17,
        "selling_price": MessageLookupByLibrary.simpleMessage("Selling Price"),
        "selling_price_validation": MessageLookupByLibrary.simpleMessage(
            "The selling price must be equal to or greater than the buying price."),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendOffer": MessageLookupByLibrary.simpleMessage("Send Offer"),
        "send_again": MessageLookupByLibrary.simpleMessage("Re-send again in"),
        "send_an_email": MessageLookupByLibrary.simpleMessage("Send an Email"),
        "send_code": MessageLookupByLibrary.simpleMessage("Send Code"),
        "send_current_location":
            MessageLookupByLibrary.simpleMessage("Send your current location"),
        "send_custom_offer":
            MessageLookupByLibrary.simpleMessage("Send Custom Offer"),
        "send_location": MessageLookupByLibrary.simpleMessage("Send Location"),
        "send_offer": MessageLookupByLibrary.simpleMessage("Send Offer"),
        "send_offers": MessageLookupByLibrary.simpleMessage("Send Offers"),
        "send_report": MessageLookupByLibrary.simpleMessage("Send Report"),
        "send_to":
            MessageLookupByLibrary.simpleMessage("Your code was sent to"),
        "send_verification_email":
            MessageLookupByLibrary.simpleMessage("Send verification email"),
        "send_verify_code":
            MessageLookupByLibrary.simpleMessage("Send Verification Code"),
        "send_verify_email":
            MessageLookupByLibrary.simpleMessage("Send Verification Email"),
        "sent_successfully":
            MessageLookupByLibrary.simpleMessage("Sent successfully"),
        "september": MessageLookupByLibrary.simpleMessage("September"),
        "service": MessageLookupByLibrary.simpleMessage("Service"),
        "serviceFree": MessageLookupByLibrary.simpleMessage("Service Free"),
        "service_fee": MessageLookupByLibrary.simpleMessage("Service Fee"),
        "service_fee_on_client":
            MessageLookupByLibrary.simpleMessage("Service fee on client"),
        "service_name": MessageLookupByLibrary.simpleMessage("Service Name"),
        "service_name_duplicate":
            MessageLookupByLibrary.simpleMessage("Service name is duplicated"),
        "service_name_required":
            MessageLookupByLibrary.simpleMessage("Service name is required"),
        "services": MessageLookupByLibrary.simpleMessage("Services"),
        "set": MessageLookupByLibrary.simpleMessage("Set"),
        "set_amount": MessageLookupByLibrary.simpleMessage("Set amount"),
        "set_amount_title": MessageLookupByLibrary.simpleMessage(
            "Set the amount you want to add"),
        "set_as_primary":
            MessageLookupByLibrary.simpleMessage("Set as a primary account"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "share_app": MessageLookupByLibrary.simpleMessage("Share App"),
        "share_campaign":
            MessageLookupByLibrary.simpleMessage("Share Campaign"),
        "share_link": MessageLookupByLibrary.simpleMessage("Share link"),
        "share_live_location":
            MessageLookupByLibrary.simpleMessage("Share live location"),
        "share_personal_files": MessageLookupByLibrary.simpleMessage(
            "Shares personal contact and payment details"),
        "share_video_link": MessageLookupByLibrary.simpleMessage(
            "Share the link to your newest video to expand your audience and boost your viewership"),
        "shine_with_stars":
            MessageLookupByLibrary.simpleMessage("Shine with the Stars"),
        "short_description":
            MessageLookupByLibrary.simpleMessage("Short Description"),
        "show": MessageLookupByLibrary.simpleMessage("Show"),
        "show_all": MessageLookupByLibrary.simpleMessage("Show All"),
        "show_all_section":
            MessageLookupByLibrary.simpleMessage("Show All Section"),
        "show_audience_segment_details": MessageLookupByLibrary.simpleMessage(
            "Show Audience Segment Details"),
        "show_details": MessageLookupByLibrary.simpleMessage("View Details"),
        "show_followers": MessageLookupByLibrary.simpleMessage(
            "Show Followers for all users"),
        "show_less": MessageLookupByLibrary.simpleMessage("Show Less"),
        "show_results": MessageLookupByLibrary.simpleMessage("Show Results"),
        "show_socials_links": MessageLookupByLibrary.simpleMessage(
            "Show all your socials media links."),
        "signUpErrorMessage": MessageLookupByLibrary.simpleMessage(
            "This email or phone number used by another user"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "sign_in_or_create_account_now": MessageLookupByLibrary.simpleMessage(
            "Sign in or create your account automatically now to create and manage campaigns, request services, communicate with influencers, and more..."),
        "sign_in_or_create_account_now_to_create_and_manage_campaigns_request_services_communicate_with_stars_and_more":
            MessageLookupByLibrary.simpleMessage(
                "Sign in or create your account automatically now to create and manage campaigns, request services, communicate with stars, and more..."),
        "sign_in_to_view_orders": MessageLookupByLibrary.simpleMessage(
            "Please sign in to view your orders"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Sign Out"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "sign_up_with_apple":
            MessageLookupByLibrary.simpleMessage("Sign up with Apple"),
        "sign_up_with_google":
            MessageLookupByLibrary.simpleMessage("Sign up with Google"),
        "sign_up_with_phone_number": MessageLookupByLibrary.simpleMessage(
            "Enter with your phone number"),
        "silver": MessageLookupByLibrary.simpleMessage("Silver"),
        "silver_level_reward": MessageLookupByLibrary.simpleMessage(
            "4000 points for reaching Silver level"),
        "sitejabber": MessageLookupByLibrary.simpleMessage("Sitejabber "),
        "size_more_than_mg_error": m18,
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "slide_to_cancel":
            MessageLookupByLibrary.simpleMessage("Slide to cancel"),
        "snap_chat_validate":
            MessageLookupByLibrary.simpleMessage("Enter valid username link"),
        "social_media": MessageLookupByLibrary.simpleMessage("My Accounts"),
        "social_more_information": MessageLookupByLibrary.simpleMessage(
            "The more information brands get about your account, the more tasks they will be able to offer you."),
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong."),
        "sort_by": MessageLookupByLibrary.simpleMessage("Sort By"),
        "speed_up_your_application":
            MessageLookupByLibrary.simpleMessage("Speed up your application"),
        "spend_1000_sar":
            MessageLookupByLibrary.simpleMessage("Spend 1000 SAR and get:"),
        "spend_3000_sar":
            MessageLookupByLibrary.simpleMessage("Spend 300 SAR and get:"),
        "spend_300_sar":
            MessageLookupByLibrary.simpleMessage("Spend 300 SAR and get:"),
        "spend_6000_sar":
            MessageLookupByLibrary.simpleMessage("Spend 6000 SAR and get:"),
        "sponsorship_score":
            MessageLookupByLibrary.simpleMessage("Sponsorship score"),
        "sr": MessageLookupByLibrary.simpleMessage("SAR"),
        "star": MessageLookupByLibrary.simpleMessage("Star"),
        "star_attachments":
            MessageLookupByLibrary.simpleMessage("Attachments of the Star"),
        "star_brief": MessageLookupByLibrary.simpleMessage("Short Description"),
        "star_camp_details_hint": MessageLookupByLibrary.simpleMessage(
            "All influencers added to this campaign will be able to view all these details, including attachments. However, they will not be able to see the proposed campaign budget, the target influencer category, or the suitable platforms for the campaign."),
        "star_description_hint": MessageLookupByLibrary.simpleMessage(
            "This description will only be visible to this influencer."),
        "star_details": MessageLookupByLibrary.simpleMessage("Star Details"),
        "star_id_not_found":
            MessageLookupByLibrary.simpleMessage("Star ID not found"),
        "star_location":
            MessageLookupByLibrary.simpleMessage("Star\'s Location"),
        "star_notes": MessageLookupByLibrary.simpleMessage("Star Notes"),
        "star_rated": MessageLookupByLibrary.simpleMessage("Star Rated"),
        "star_release_date":
            MessageLookupByLibrary.simpleMessage("Campaign publish date"),
        "star_review": MessageLookupByLibrary.simpleMessage("Star Review"),
        "star_working": MessageLookupByLibrary.simpleMessage(
            "The Star is working on creating and delivering the content according to the agreed order details."),
        "stars": MessageLookupByLibrary.simpleMessage("Stars "),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "start_by_filling_out": MessageLookupByLibrary.simpleMessage(
            "Start by filling out this form. All your information and answers are 100% confidential. and is never disclosed to third parties."),
        "start_campaign_now":
            MessageLookupByLibrary.simpleMessage("Start Your Campaign Now"),
        "start_from": MessageLookupByLibrary.simpleMessage("Starting From"),
        "start_verification":
            MessageLookupByLibrary.simpleMessage("Start verification"),
        "start_work_on_campaign": MessageLookupByLibrary.simpleMessage(
            "You can start working on the campaign, after the deposit is made by the client and get awarded"),
        "start_your_campaign_now":
            MessageLookupByLibrary.simpleMessage("Start your campaign now"),
        "start_your_first_favorite": MessageLookupByLibrary.simpleMessage(
            "Start your first Favorites list"),
        "start_your_first_favorite_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "Gather your favorite influencers into your own lists."),
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "status_completed":
            MessageLookupByLibrary.simpleMessage("Your Approval (Completed)"),
        "status_delivered": MessageLookupByLibrary.simpleMessage(
            "Delivered (Waiting your approval)"),
        "status_in_progress":
            MessageLookupByLibrary.simpleMessage("Star Approved (in Progress)"),
        "status_requested": MessageLookupByLibrary.simpleMessage(
            "Requested (Waiting Star Approval)"),
        "steps_details": MessageLookupByLibrary.simpleMessage("Steps details"),
        "stop_live_location": MessageLookupByLibrary.simpleMessage("Stop"),
        "store": MessageLookupByLibrary.simpleMessage("Store"),
        "store_image_size": MessageLookupByLibrary.simpleMessage(
            "Use a size that\'s at least 720 x 480 pixels"),
        "stores": MessageLookupByLibrary.simpleMessage("Stores"),
        "stores_and_products":
            MessageLookupByLibrary.simpleMessage("My Stores"),
        "stories": MessageLookupByLibrary.simpleMessage("My Stories"),
        "story_views_by_country":
            MessageLookupByLibrary.simpleMessage("Story Views by Country"),
        "story_views_by_gender":
            MessageLookupByLibrary.simpleMessage("Story Views by Gender"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "submit_campaign":
            MessageLookupByLibrary.simpleMessage("Submit Campaign"),
        "submit_files": MessageLookupByLibrary.simpleMessage("submit"),
        "submit_screenshot":
            MessageLookupByLibrary.simpleMessage("Submit screenshot"),
        "submit_survey": MessageLookupByLibrary.simpleMessage("Submit Survey"),
        "submit_verification":
            MessageLookupByLibrary.simpleMessage("Submit for verification"),
        "submitted_file":
            MessageLookupByLibrary.simpleMessage("Submitted File"),
        "suggestedStarsBy":
            MessageLookupByLibrary.simpleMessage("Suggested stars by"),
        "suitable_platforms":
            MessageLookupByLibrary.simpleMessage("Suitable Platforms"),
        "supported_formats": MessageLookupByLibrary.simpleMessage(
            "Supported Files: Images, Videos, PDF Files"),
        "supported_proofs": MessageLookupByLibrary.simpleMessage(
            "Supported formats: image or pdf file"),
        "survey": MessageLookupByLibrary.simpleMessage("survey"),
        "survey_inserted": MessageLookupByLibrary.simpleMessage(
            "Client Survey Inserted successfully"),
        "survey_review_message": MessageLookupByLibrary.simpleMessage(
            "We will review your survey within few hours and\ndeposit 5 SAR to your balance today.\nWe will also pick a winner for 100 SAR"),
        "suspicious": MessageLookupByLibrary.simpleMessage("Suspicious"),
        "suspicious_accounts":
            MessageLookupByLibrary.simpleMessage("Suspicious accounts"),
        "suspicious_accounts1":
            MessageLookupByLibrary.simpleMessage("Suspicious accounts"),
        "suspicious_accounts_description": MessageLookupByLibrary.simpleMessage(
            "Bots or individuals using automated tools to increase likes and comments or to buy followers are considered suspicious accounts.\nThey are detected by a machine learning model trained on over 53 patterns, capable of identifying 95% of known fraudulent activities."),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "target_audience":
            MessageLookupByLibrary.simpleMessage("Target Audience"),
        "target_influencer_category":
            MessageLookupByLibrary.simpleMessage("Target Influencer Category"),
        "tech": MessageLookupByLibrary.simpleMessage("Technology & Devices"),
        "tell_your_friends":
            MessageLookupByLibrary.simpleMessage("Tell Your Friends about us"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "terms_and_conditions_and_privacy_policy":
            MessageLookupByLibrary.simpleMessage(
                "Terms and Conditions and Privacy Policy"),
        "terms_of_use": MessageLookupByLibrary.simpleMessage("Terms of Use"),
        "thank_for_completing_account_information":
            MessageLookupByLibrary.simpleMessage(
                "Thank you for completing your account information! Our team is reviewing it and will notify you once verification is complete."),
        "thank_you": MessageLookupByLibrary.simpleMessage("Thank You"),
        "the_client_is_yet_to_make_a_deposit": MessageLookupByLibrary.simpleMessage(
            "The client is yet to make a deposit.\nPlease remind your client to deposit payment so you can start with the campaign."),
        "the_search": MessageLookupByLibrary.simpleMessage("The Search"),
        "there_are_no_analysis_here":
            MessageLookupByLibrary.simpleMessage("There are no analysis here"),
        "there_are_no_platform_added_in_social_media":
            MessageLookupByLibrary.simpleMessage(
                "There are no platform added in social media"),
        "this_action_cannot_be_undone": MessageLookupByLibrary.simpleMessage(
            "This action cannot be undone"),
        "thousand": MessageLookupByLibrary.simpleMessage("Thousand"),
        "thousand_symbol": MessageLookupByLibrary.simpleMessage("K"),
        "tiktok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "time": MessageLookupByLibrary.simpleMessage("Time"),
        "timeLeft": MessageLookupByLibrary.simpleMessage("Time Left"),
        "time_day": MessageLookupByLibrary.simpleMessage("day"),
        "time_days": MessageLookupByLibrary.simpleMessage("days"),
        "time_hour": MessageLookupByLibrary.simpleMessage("hour"),
        "time_hours": MessageLookupByLibrary.simpleMessage("hours"),
        "time_just_now": MessageLookupByLibrary.simpleMessage("Just now"),
        "time_minute": MessageLookupByLibrary.simpleMessage("minute"),
        "time_minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "to_be_a_trusted":
            MessageLookupByLibrary.simpleMessage("to be a trusted by  "),
        "to_be_accepted":
            MessageLookupByLibrary.simpleMessage("to be accepted for"),
        "toast_favorites_updated": MessageLookupByLibrary.simpleMessage(
            "Favorites updated successfully"),
        "toast_influencer_added_to_favorites":
            MessageLookupByLibrary.simpleMessage(
                "Influencer added to favorites"),
        "toast_influencer_removed_all": MessageLookupByLibrary.simpleMessage(
            "Influencer removed from all lists"),
        "toast_influencer_removed_from":
            MessageLookupByLibrary.simpleMessage("Influencer removed from "),
        "toast_influencer_removed_from_favorites":
            MessageLookupByLibrary.simpleMessage("Favorites updated"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "tool_tip_message": MessageLookupByLibrary.simpleMessage(
            "controller how can send you collaboration offers. Choose \'public\' to accept offers from everyone. Choose \'Brands\' to limit offers to businesses, or \'Only me\' to restrict any party from sending you offers"),
        "top_age_group": MessageLookupByLibrary.simpleMessage("Top Age Group"),
        "top_city": MessageLookupByLibrary.simpleMessage("Top City"),
        "top_gender": MessageLookupByLibrary.simpleMessage("Top Gender"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "total_amount_for_drafts_influencers":
            MessageLookupByLibrary.simpleMessage(
                "Total amount for drafts influencers"),
        "total_amount_for_influencers_draft":
            MessageLookupByLibrary.simpleMessage(
                "Total amount for influencers draft"),
        "total_amount_for_platforms":
            MessageLookupByLibrary.simpleMessage("Total amount for platforms"),
        "total_balance": MessageLookupByLibrary.simpleMessage("Total Balance"),
        "total_income": MessageLookupByLibrary.simpleMessage("Total income"),
        "total_paid": MessageLookupByLibrary.simpleMessage("Total Paid"),
        "total_price": MessageLookupByLibrary.simpleMessage("Total Amount"),
        "trackTheCampaign":
            MessageLookupByLibrary.simpleMessage("Track the campaign"),
        "transaction_addMoney":
            MessageLookupByLibrary.simpleMessage("Add Money"),
        "transaction_canceled":
            MessageLookupByLibrary.simpleMessage("Canceled"),
        "transaction_completed":
            MessageLookupByLibrary.simpleMessage("Completed"),
        "transaction_inProgress":
            MessageLookupByLibrary.simpleMessage("In Progress"),
        "transaction_pending": MessageLookupByLibrary.simpleMessage("Pending"),
        "transfer_business_days": MessageLookupByLibrary.simpleMessage(
            "Your transfer will complete in 10 business days."),
        "transfer_days": MessageLookupByLibrary.simpleMessage(
            "Your transfer will complete in 3-7 business days."),
        "transfer_text": MessageLookupByLibrary.simpleMessage(
            "Once you\'ve made a withdraw, you can cancel it for up a few hours. To cancel a pending withdraw, click on the pending withdraw and click on cancel."),
        "trust_and_verification":
            MessageLookupByLibrary.simpleMessage("Trust & Verification"),
        "trust_score":
            MessageLookupByLibrary.simpleMessage("What is trust score?"),
        "trust_score_description": MessageLookupByLibrary.simpleMessage(
            "Having a high trust score is important to clients as stars may decide not to bid on your campaign if you are not a trusted user. This is especially true for our most experienced stars, who are keen to ensure that any payments they receive are protected."),
        "trusted_advantage": MessageLookupByLibrary.simpleMessage(
            "Verification provides access to exclusive opportunities, premium ads, and profitable partnerships, which enhances the user experience"),
        "trusted_benefit": MessageLookupByLibrary.simpleMessage(
            "Verification opens doors to exclusive\n opportunities, premium ads, and lucrative\n partnerships, elevating the user experience with "),
        "trustpilot": MessageLookupByLibrary.simpleMessage("Trustpilot "),
        "tryAgain": MessageLookupByLibrary.simpleMessage("TRY AGAIN"),
        "twenty_four_hours": MessageLookupByLibrary.simpleMessage("24 hours"),
        "twitter": MessageLookupByLibrary.simpleMessage("Twitter"),
        "txt": MessageLookupByLibrary.simpleMessage("Text"),
        "type": MessageLookupByLibrary.simpleMessage("Gender"),
        "typeHere": MessageLookupByLibrary.simpleMessage("Type here..."),
        "type_email": MessageLookupByLibrary.simpleMessage(
            "Type your email to reset your password"),
        "type_your_comment":
            MessageLookupByLibrary.simpleMessage("Type Your comment"),
        "typing": MessageLookupByLibrary.simpleMessage("Typing..."),
        "unArchive": MessageLookupByLibrary.simpleMessage("Unarchive"),
        "unBlock": MessageLookupByLibrary.simpleMessage("UnBlock"),
        "unBlockedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Unblocked successfully"),
        "unblockConfirm": MessageLookupByLibrary.simpleMessage(
            "Are You sure you want to unblock this user"),
        "under_review": MessageLookupByLibrary.simpleMessage("Under review"),
        "undo": MessageLookupByLibrary.simpleMessage("Undo"),
        "unified_price": MessageLookupByLibrary.simpleMessage("Unified Price"),
        "unified_price_description": MessageLookupByLibrary.simpleMessage(
            "The price is shown to the client as a single price for all platforms."),
        "unit_social_media": MessageLookupByLibrary.simpleMessage(
            "But all social media in one link with 2 steps add link only"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "unknown_contact": MessageLookupByLibrary.simpleMessage("Unknown"),
        "unknown_place": MessageLookupByLibrary.simpleMessage("Unknown Place"),
        "unmute": MessageLookupByLibrary.simpleMessage("Unmute"),
        "unpin": MessageLookupByLibrary.simpleMessage("Unpin"),
        "unpin_message": MessageLookupByLibrary.simpleMessage("Unpin Message"),
        "unpin_message_description": MessageLookupByLibrary.simpleMessage(
            "This message will be unpinned from the top of the chat."),
        "unread": MessageLookupByLibrary.simpleMessage("Unread"),
        "unsaved_changes":
            MessageLookupByLibrary.simpleMessage("Unsaved Changes"),
        "unsaved_changes_message": MessageLookupByLibrary.simpleMessage(
            "You have unsaved changes. Are you sure you want to leave without saving?"),
        "unsaved_changes_subtitle": MessageLookupByLibrary.simpleMessage(
            "If you go back now, you will lose your edits."),
        "unsaved_changes_title": MessageLookupByLibrary.simpleMessage(
            "Do you want to ignore the changes?"),
        "up_to_twenty_store":
            MessageLookupByLibrary.simpleMessage("You can add up to 20 item"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "update_account": MessageLookupByLibrary.simpleMessage(
            "Your account has been successfully update. To complete the process please check your email\n"),
        "update_bid": MessageLookupByLibrary.simpleMessage(
            "The Bid detail updated Successfully."),
        "update_location":
            MessageLookupByLibrary.simpleMessage("Update Location"),
        "update_now": MessageLookupByLibrary.simpleMessage("Update Now"),
        "update_password":
            MessageLookupByLibrary.simpleMessage("Update Password"),
        "update_phone_to": MessageLookupByLibrary.simpleMessage(
            "The phone number is updated to\n"),
        "update_required_message": MessageLookupByLibrary.simpleMessage(
            "We\'ve released a new and improved update. Please update the app to continue using it."),
        "update_required_title":
            MessageLookupByLibrary.simpleMessage("Update Required"),
        "updated_success":
            MessageLookupByLibrary.simpleMessage("User updated successfully."),
        "upload_cr": MessageLookupByLibrary.simpleMessage(
            "Upload your Commercial Registration"),
        "upload_file": MessageLookupByLibrary.simpleMessage("Upload file"),
        "upload_files": MessageLookupByLibrary.simpleMessage("Upload files"),
        "upload_image": MessageLookupByLibrary.simpleMessage("Upload Image"),
        "upload_logo":
            MessageLookupByLibrary.simpleMessage("Upload Logo (Optional)"),
        "upload_video_image":
            MessageLookupByLibrary.simpleMessage("Upload Video Or Image"),
        "user_busy": MessageLookupByLibrary.simpleMessage("User is busy"),
        "user_login_success":
            MessageLookupByLibrary.simpleMessage("User login successfully"),
        "user_name": MessageLookupByLibrary.simpleMessage("Username"),
        "validate_request":
            MessageLookupByLibrary.simpleMessage("for a validation request."),
        "vat": MessageLookupByLibrary.simpleMessage("Value Added Tax"),
        "vatNumber": MessageLookupByLibrary.simpleMessage("VAT Number"),
        "vat_number": MessageLookupByLibrary.simpleMessage("Vat"),
        "vat_number_hint": MessageLookupByLibrary.simpleMessage(
            "The VAT number consists of 15 digits, always starting with 3, and is issued by the Zakat, Tax, and Customs Authority."),
        "vat_registered":
            MessageLookupByLibrary.simpleMessage("Are you registered on VAT ?"),
        "verifications": MessageLookupByLibrary.simpleMessage("Verifications"),
        "verified": MessageLookupByLibrary.simpleMessage("Verified"),
        "verified_account": MessageLookupByLibrary.simpleMessage("Mawthouq"),
        "verifyWith": MessageLookupByLibrary.simpleMessage("Verified with"),
        "verify_account": MessageLookupByLibrary.simpleMessage(
            "To verify your account, you need to have a trust score of at least 50% on your profile"),
        "verify_email": MessageLookupByLibrary.simpleMessage("Verify email"),
        "verify_email_send": MessageLookupByLibrary.simpleMessage(
            "A verification is sent to your email."),
        "verify_email_text": MessageLookupByLibrary.simpleMessage(
            "To continue using nojom, please click on the link in the verification email send to your email. This will confirm your email as your contact address."),
        "verify_phone_text": MessageLookupByLibrary.simpleMessage(
            "Please provide your phone number so that we can verify your account. This number will be kept private and will be used for verification purpose."),
        "verify_with": MessageLookupByLibrary.simpleMessage("Verified with"),
        "verify_your_account_by_completing_your_profile_information_to_access_all_the_features_on_the_nojoom_platform":
            MessageLookupByLibrary.simpleMessage(
                "Verify your account by completing your profile information to access all the features on the Nojoom platform."),
        "verify_your_account_now":
            MessageLookupByLibrary.simpleMessage("Verify your account now"),
        "very_good": MessageLookupByLibrary.simpleMessage("Very Good"),
        "very_good_match":
            MessageLookupByLibrary.simpleMessage("Very Good Match"),
        "very_high": MessageLookupByLibrary.simpleMessage("Very High"),
        "very_low": MessageLookupByLibrary.simpleMessage("Very Low"),
        "very_poor": MessageLookupByLibrary.simpleMessage("Very Poor"),
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "video_not_available":
            MessageLookupByLibrary.simpleMessage("Video source not available"),
        "view": MessageLookupByLibrary.simpleMessage("View"),
        "view_all": MessageLookupByLibrary.simpleMessage("View All"),
        "view_all_analytics":
            MessageLookupByLibrary.simpleMessage("View All Analytics"),
        "view_all_services":
            MessageLookupByLibrary.simpleMessage("View All Services"),
        "view_all_stores_with_count":
            MessageLookupByLibrary.simpleMessage("View All Stores"),
        "view_bidding": MessageLookupByLibrary.simpleMessage("View bidding"),
        "view_campaign": MessageLookupByLibrary.simpleMessage("View Campaign"),
        "view_less": MessageLookupByLibrary.simpleMessage("View Less"),
        "view_our_stars":
            MessageLookupByLibrary.simpleMessage("View Our Stars"),
        "view_profile": MessageLookupByLibrary.simpleMessage("View Profile"),
        "view_public_profile":
            MessageLookupByLibrary.simpleMessage("View My Public Profile"),
        "viewed_before": MessageLookupByLibrary.simpleMessage("Viewed Before"),
        "vip": MessageLookupByLibrary.simpleMessage("VIP"),
        "vip_level_reward": MessageLookupByLibrary.simpleMessage(
            "24000 points for reaching VIP level"),
        "vip_support":
            MessageLookupByLibrary.simpleMessage("Vip Customer Support"),
        "visible": MessageLookupByLibrary.simpleMessage("Visible to everyone"),
        "visible_to": MessageLookupByLibrary.simpleMessage("Visible to "),
        "visible_to_owner": MessageLookupByLibrary.simpleMessage(
            "Private, visible only to owner"),
        "visible_to_you":
            MessageLookupByLibrary.simpleMessage("Visible to you only"),
        "visit_web": MessageLookupByLibrary.simpleMessage("Visit Website"),
        "wallet": MessageLookupByLibrary.simpleMessage("Wallet"),
        "wallet_amount_to_add":
            MessageLookupByLibrary.simpleMessage("Amount you want to add"),
        "wallet_available_balance":
            MessageLookupByLibrary.simpleMessage("Available balance in wallet"),
        "wallet_balance":
            MessageLookupByLibrary.simpleMessage("Wallet Balance"),
        "wallet_total_balance":
            MessageLookupByLibrary.simpleMessage("Total amount in wallet"),
        "weak_match": MessageLookupByLibrary.simpleMessage("Weak Match"),
        "website": MessageLookupByLibrary.simpleMessage("Website"),
        "website_link": MessageLookupByLibrary.simpleMessage("Website Link"),
        "website_or_social_media_link": MessageLookupByLibrary.simpleMessage(
            "Website link or social media account"),
        "website_or_social_media_link_with_ai":
            MessageLookupByLibrary.simpleMessage(
                "Your website or social media account link. After changing the link, you can update all campaign details based on the new link with the help of AI."),
        "week": MessageLookupByLibrary.simpleMessage("Week"),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "welcome_back": MessageLookupByLibrary.simpleMessage("Welcome Back"),
        "whats_app": MessageLookupByLibrary.simpleMessage("WhatsApp"),
        "when_add_influencer_it_will_appear_here":
            MessageLookupByLibrary.simpleMessage(
                "When you add an influencer to your favorites, they will appear here."),
        "who_can_see":
            MessageLookupByLibrary.simpleMessage("Who Can See This Item"),
        "with_draw_now": MessageLookupByLibrary.simpleMessage(
            "and you can withdraw money form "),
        "withdraw": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "withdraw_from_available_balance": MessageLookupByLibrary.simpleMessage(
            "Withdraw only from available balance"),
        "withdraw_label": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "withdraw_money":
            MessageLookupByLibrary.simpleMessage("Withdraw Money"),
        "withdraw_now": MessageLookupByLibrary.simpleMessage("Withdraw now"),
        "withdraw_offer": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "withdraw_offer_description":
            MessageLookupByLibrary.simpleMessage("Withdraw the offer"),
        "withdraw_summary":
            MessageLookupByLibrary.simpleMessage("Withdraw Summary"),
        "withdraw_text": MessageLookupByLibrary.simpleMessage(
            "Your transfer will be completed within 3-7 business days after you\'ve placed the withdraw. Once you\'ve made a withdraw, you can cancel it up to few hours."),
        "withdraw_to": MessageLookupByLibrary.simpleMessage("Withdraw to"),
        "within_this_month":
            MessageLookupByLibrary.simpleMessage("Within this month"),
        "work_in_progress_campaign":
            MessageLookupByLibrary.simpleMessage("Work In Progress"),
        "work_with": MessageLookupByLibrary.simpleMessage("Work with "),
        "write_here": MessageLookupByLibrary.simpleMessage("Write here"),
        "write_review": MessageLookupByLibrary.simpleMessage(
            "Write a review and submit in a screenshot\\nof review for all or any listed sites and get credit for each review."),
        "write_review_desc": MessageLookupByLibrary.simpleMessage(
            "Share a screen shot when the review is complete"),
        "write_review_title":
            MessageLookupByLibrary.simpleMessage("Write a review"),
        "write_star_description": MessageLookupByLibrary.simpleMessage(
            "Write influencer-specific campaign details here (e.g., custom code or link)"),
        "write_your_feedback":
            MessageLookupByLibrary.simpleMessage("Write your feedback"),
        "write_your_message":
            MessageLookupByLibrary.simpleMessage("Write your message..."),
        "write_your_report":
            MessageLookupByLibrary.simpleMessage("Write your Report"),
        "wrong_code": MessageLookupByLibrary.simpleMessage(
            "Oops! The code you entered is incorrect. Please check the code and try again. "),
        "wrong_url_video": MessageLookupByLibrary.simpleMessage(
            "🚫 It looks like the link you entered is not correct. Please enter a valid YouTube link. If you need assistance, feel free to contact our support team."),
        "year": MessageLookupByLibrary.simpleMessage("YY"),
        "year_age": MessageLookupByLibrary.simpleMessage("Year"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yes_have": MessageLookupByLibrary.simpleMessage("Yes, have"),
        "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
        "you": MessageLookupByLibrary.simpleMessage("You"),
        "youReceive": MessageLookupByLibrary.simpleMessage("You\'ll Receive"),
        "youWillGetTotal":
            MessageLookupByLibrary.simpleMessage("You will get total amount"),
        "you_are": MessageLookupByLibrary.simpleMessage("You\'re"),
        "you_are_blocked_by_user": MessageLookupByLibrary.simpleMessage(
            "You are blocked by this user"),
        "you_are_vip":
            MessageLookupByLibrary.simpleMessage("You are VIP level"),
        "you_can_send_offer": MessageLookupByLibrary.simpleMessage(
            "You can send a custom offer to the influencer."),
        "you_have_blocked_this_user":
            MessageLookupByLibrary.simpleMessage("You have blocked this user"),
        "you_have_earned": MessageLookupByLibrary.simpleMessage(
            "You\'ve earned this much so far"),
        "you_need": MessageLookupByLibrary.simpleMessage("You need "),
        "you_receive": MessageLookupByLibrary.simpleMessage("You will receive"),
        "you_tube": MessageLookupByLibrary.simpleMessage("YouTube"),
        "your_information_in_review": MessageLookupByLibrary.simpleMessage(
            "Your information is under review"),
        "your_information_in_review_desc": MessageLookupByLibrary.simpleMessage(
            "Thank you for completing your account information! Our team is currently reviewing it, and you can modify any details during the review period. You will be notified once verification is complete."),
        "your_name": MessageLookupByLibrary.simpleMessage("Your Name"),
        "your_profile": MessageLookupByLibrary.simpleMessage("Your Profile is"),
        "your_profile_is":
            MessageLookupByLibrary.simpleMessage("Your Profile is "),
        "your_review": MessageLookupByLibrary.simpleMessage("of your review"),
        "youtube": MessageLookupByLibrary.simpleMessage("Youtube"),
        "zero_service_fee":
            MessageLookupByLibrary.simpleMessage("0% Service Fee"),
        "zip_code": MessageLookupByLibrary.simpleMessage("Zip code")
      };
}
