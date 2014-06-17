package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import com.alipay.kabaoprod.core.model.model.SecurityShareInfo;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.commonui.widget.APShareSelectDialog.OnShareSelectListener;
import com.alipay.mobile.framework.service.ShareService;
import java.util.Map;

final class m
  implements APShareSelectDialog.OnShareSelectListener
{
  m(SecurityAccountQrCodeActivity paramSecurityAccountQrCodeActivity, ShareService paramShareService, Map paramMap)
  {
  }

  public final void onSelect(int paramInt)
  {
    ShareContent localShareContent;
    if ((this.a != null) && (this.b != null))
    {
      localShareContent = new ShareContent();
      switch (paramInt)
      {
      default:
      case 1:
      case 16:
      case 1048576:
      case 16777216:
      case 256:
      case 4096:
      case 65536:
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  localShareContent.setUrl(SecurityAccountQrCodeActivity.d(this.c));
                }
                while (this.b.get("SMS") == null);
                SecurityAccountQrCodeActivity localSecurityAccountQrCodeActivity7 = this.c;
                SecurityAccountQrCodeActivity.a(localSecurityAccountQrCodeActivity7, SecurityAccountQrCodeActivity.a(SecurityAccountQrCodeActivity.e(this.c), 1));
                localShareContent.setTitle(((SecurityShareInfo)this.b.get("SMS")).getTitle());
                localShareContent.setContent(((SecurityShareInfo)this.b.get("SMS")).getContent());
                this.c.a(SecurityAccountQrCodeActivity.f(this.c), localShareContent, this.a, paramInt);
                return;
                localShareContent.setUrl(SecurityAccountQrCodeActivity.d(this.c));
              }
              while (this.b.get("SINA_WEIBO") == null);
              SecurityAccountQrCodeActivity localSecurityAccountQrCodeActivity6 = this.c;
              SecurityAccountQrCodeActivity.a(localSecurityAccountQrCodeActivity6, SecurityAccountQrCodeActivity.a(SecurityAccountQrCodeActivity.e(this.c), 16));
              localShareContent.setTitle(((SecurityShareInfo)this.b.get("SINA_WEIBO")).getTitle());
              localShareContent.setContent(((SecurityShareInfo)this.b.get("SINA_WEIBO")).getContent());
              this.c.a(SecurityAccountQrCodeActivity.f(this.c), localShareContent, this.a, paramInt);
              return;
              localShareContent.setUrl(SecurityAccountQrCodeActivity.d(this.c));
            }
            while (this.b.get("LAIWANG") == null);
            SecurityAccountQrCodeActivity localSecurityAccountQrCodeActivity5 = this.c;
            SecurityAccountQrCodeActivity.a(localSecurityAccountQrCodeActivity5, SecurityAccountQrCodeActivity.a(SecurityAccountQrCodeActivity.e(this.c), 1048576));
            localShareContent.setTitle(((SecurityShareInfo)this.b.get("LAIWANG")).getContent());
            localShareContent.setContent(SecurityAccountQrCodeActivity.d(this.c));
            this.c.a(SecurityAccountQrCodeActivity.f(this.c), localShareContent, this.a, paramInt);
            return;
            localShareContent.setUrl(SecurityAccountQrCodeActivity.d(this.c));
          }
          while (this.b.get("LAIWANG_FEED") == null);
          SecurityAccountQrCodeActivity localSecurityAccountQrCodeActivity4 = this.c;
          SecurityAccountQrCodeActivity.a(localSecurityAccountQrCodeActivity4, SecurityAccountQrCodeActivity.a(SecurityAccountQrCodeActivity.e(this.c), 16777216));
          localShareContent.setTitle(((SecurityShareInfo)this.b.get("LAIWANG")).getContent());
          localShareContent.setContent(SecurityAccountQrCodeActivity.d(this.c));
          this.c.a(SecurityAccountQrCodeActivity.f(this.c), localShareContent, this.a, paramInt);
          return;
          localShareContent.setUrl(SecurityAccountQrCodeActivity.d(this.c));
        }
        while (this.b.get("WEIXIN_FRIEND") == null);
        SecurityAccountQrCodeActivity localSecurityAccountQrCodeActivity3 = this.c;
        SecurityAccountQrCodeActivity.a(localSecurityAccountQrCodeActivity3, SecurityAccountQrCodeActivity.a(SecurityAccountQrCodeActivity.e(this.c), 256));
        localShareContent.setTitle(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND")).getTitle());
        localShareContent.setContent(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND")).getContent());
        this.c.a(SecurityAccountQrCodeActivity.f(this.c), localShareContent, this.a, paramInt);
        return;
        localShareContent.setUrl(SecurityAccountQrCodeActivity.d(this.c));
      }
      while (this.b.get("WEIXIN_FRIEND_CIRCLE") == null);
      SecurityAccountQrCodeActivity localSecurityAccountQrCodeActivity2 = this.c;
      SecurityAccountQrCodeActivity.a(localSecurityAccountQrCodeActivity2, SecurityAccountQrCodeActivity.a(SecurityAccountQrCodeActivity.e(this.c), 4096));
      localShareContent.setTitle(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND_CIRCLE")).getTitle());
      localShareContent.setContent(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND_CIRCLE")).getContent());
      this.c.a(SecurityAccountQrCodeActivity.f(this.c), localShareContent, this.a, paramInt);
      return;
      localShareContent.setUrl(SecurityAccountQrCodeActivity.d(this.c));
    }
    while (this.b.get("COPY_LINK") == null);
    SecurityAccountQrCodeActivity localSecurityAccountQrCodeActivity1 = this.c;
    SecurityAccountQrCodeActivity.a(localSecurityAccountQrCodeActivity1, SecurityAccountQrCodeActivity.a(SecurityAccountQrCodeActivity.e(this.c), 65536));
    localShareContent.setTitle(((SecurityShareInfo)this.b.get("COPY_LINK")).getTitle());
    localShareContent.setContent(((SecurityShareInfo)this.b.get("COPY_LINK")).getContent());
    this.c.a(SecurityAccountQrCodeActivity.f(this.c), localShareContent, this.a, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.m
 * JD-Core Version:    0.6.2
 */