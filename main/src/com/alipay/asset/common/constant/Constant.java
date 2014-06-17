package com.alipay.asset.common.constant;

import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.framework.AlipayApplication;

public class Constant
{
  public static final String ALIPAY_FUND_OPEN_CACHE_KEY = "ALIPAY_FUND_OPEN_CACHE_KEY";
  public static final String ALIPAY_PWD = "1";
  public static final String AUTO_FILL = "AUTO_FILL";
  public static final String BOLLYWOOD_ASSET_STATUS_ED = "2";
  public static final String BOLLYWOOD_ASSET_STATUS_ING = "1";
  public static final String BOLLYWOOD_ASSET_STATUS_RE = "3";
  public static final String CELLPHONE_OWNER = "CELLPHONE_OWNER";
  public static final String CELLPHONE_OWNER_CPU_KEY = "CELLPHONE_OWNER_CPU_KEY";
  public static final String CELLPHONE_PWD = "2";
  public static final int FUND_ADD_CARD_SUCCESS_MESSAGE = 6;
  public static final int FUND_ADD_CARD_SUCCESS_RESULT = 7;
  public static final int FUND_ADD_CARD_SUC_JUMP_MESSAGE = 11;
  public static final int FUND_ADD_CARD_SUC_JUMP_RESULT = 10;
  public static final String FUND_FROM_RECHARGE_WAP_URL;
  public static final int FUND_IDENTITY_VERIFY_RELOAD_MESSAGE = 8;
  public static final String FUND_INDEX_WAP_URL;
  public static final String FUND_JUMP_IDENTITY_VERIFY_ERROR = "1608";
  public static final String FUND_JUMP_SELECT_CARD_CALLBACK = "card_callback";
  public static final String FUND_JUMP_SELECT_CARD_FROM = "jump_from";
  public static final String FUND_JUMP_SELECT_CARD_FROM_TRADE_PAGE = "3";
  public static final String FUND_JUMP_SELECT_CARD_FROM_TRANSFER_OUT_TO_CARD = "4";
  public static final String FUND_JUMP_SELECT_CARD_LIST = "card_list";
  public static final String FUND_JUMP_SELECT_CARD_NO = "card_no";
  public static final String FUND_JUMP_SELECT_CARD_SHOW_BUTTON = "show_button";
  public static final String FUND_JUMP_SELECT_CARD_SOURCE_CHANNEL = "source_channel";
  public static final String FUND_MAINTAIN_NOTICE_CONTENT = "fundMaintainNotice";
  public static final String FUND_MAINTAIN_NOTICE_TITLE = "fundMaintainNoticeTitle";
  public static final int FUND_MAIN_PAGE_REQUEST_CODE = 12;
  public static final String FUND_OPEN_ACCOUNT_SUCCESS_BROADCAST = "fund_open_account_success_broadcast";
  public static final String FUND_OPEN_INFO_RESULT_EXTRA = "FundOpenInfoResult";
  public static final String FUND_OPEN_SUCCESS_RETURN = "fundOpenSuccessReturn";
  public static final String FUND_OPEN_UPGRADE_CERT_NO = "upgradeCertNo";
  public static final int FUND_REFRESH_MAIN_PAGE_RESULT_CODE = 13;
  public static final String FUND_SELECTED_BANKCARD_ID = "fund_selected_bankcard_id";
  public static final int FUND_SELECT_CARD_PAGE_REQUEST = 5;
  public static final int FUND_SELECT_CARD_PAGE_RESULT = 4;
  public static final String FUND_SHAKE_PAGE_PRE_AMOUNT_EXTRA = "pre_amount";
  public static final String IN_TWO_HOURS = "IN_TWO_HOURS";
  public static final String MANUAL_FILL = "MANUAL_FILL";
  public static final String NEXT_DAY = "NEXT_DAY";
  public static final String NEXT_DAY_LESS = "NEXT_DAY_LESS";
  public static final String NEXT_DAY_MORE = "NEXT_DAY_MORE";
  public static final String NEXT_DAY_OVER = "NEXT_DAY_OVER";
  public static final int PAGE_START = 1;
  public static final String REAL_NAME_CERTIFY_MEMO = "real_name_certify_memo";
  public static final int REAL_SUCCESS_PHONE_CASHIER = 9000;
  public static final String REAL_TIME = "REAL_TIME";
  public static final int REQUEST_FUND_IDENTITY_VERIFY = 3;
  public static final int REQUEST_FUND_SELECT_CARD = 9;
  public static final int REQUEST_FUND_SIGN = 1;
  public static final int RESULT_FUND_SIGN_SUCCESS = 2;

  static
  {
    String str1;
    if (ReadSettingServerUrl.getInstance().isOnline(AlipayApplication.getInstance()))
    {
      str1 = "http://d.alipay.com/fbbc/yeb.htm";
      FUND_INDEX_WAP_URL = str1;
      if (!ReadSettingServerUrl.getInstance().isOnline(AlipayApplication.getInstance()))
        break label45;
    }
    label45: for (String str2 = "http://d.alipay.com/fbbc/prcyeb.htm"; ; str2 = "http://d.alipay.net/fbbc/prcyeb.htm")
    {
      FUND_FROM_RECHARGE_WAP_URL = str2;
      return;
      str1 = "http://d.alipay.net/fbbc/yeb.htm";
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.constant.Constant
 * JD-Core Version:    0.6.2
 */