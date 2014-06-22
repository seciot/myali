package com.alipay.mobile.onsitepay.utils;

import com.alipay.kabaoprod.core.model.model.SecurityShareInfo;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.commonui.widget.APShareSelectDialog.OnShareSelectListener;
import com.alipay.mobile.framework.service.ShareService;
import java.util.Map;

final class b
  implements APShareSelectDialog.OnShareSelectListener
{
  b(ShareSavePicThireBtnActivity paramShareSavePicThireBtnActivity, ShareService paramShareService, Map paramMap)
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
                  localShareContent.setUrl(ShareSavePicThireBtnActivity.getBundle(this.c));
                }
                while (this.b.get("SMS") == null);
                ShareSavePicThireBtnActivity localShareSavePicThireBtnActivity7 = this.c;
                ShareSavePicThireBtnActivity.v(localShareSavePicThireBtnActivity7, ShareSavePicThireBtnActivity.v(ShareSavePicThireBtnActivity.dexopt(this.c), 1));
                localShareContent.setTitle(((SecurityShareInfo)this.b.get("SMS")).getTitle());
                localShareContent.setContent(((SecurityShareInfo)this.b.get("SMS")).getContent());
                this.c.a(ShareSavePicThireBtnActivity.getBundleByComponentName(this.c), localShareContent, this.a, paramInt);
                return;
                localShareContent.setUrl(ShareSavePicThireBtnActivity.getBundle(this.c));
              }
              while (this.b.get("SINA_WEIBO") == null);
              ShareSavePicThireBtnActivity localShareSavePicThireBtnActivity6 = this.c;
              ShareSavePicThireBtnActivity.v(localShareSavePicThireBtnActivity6, ShareSavePicThireBtnActivity.v(ShareSavePicThireBtnActivity.dexopt(this.c), 16));
              localShareContent.setTitle(((SecurityShareInfo)this.b.get("SINA_WEIBO")).getTitle());
              localShareContent.setContent(((SecurityShareInfo)this.b.get("SINA_WEIBO")).getContent());
              this.c.a(ShareSavePicThireBtnActivity.getBundleByComponentName(this.c), localShareContent, this.a, paramInt);
              return;
              localShareContent.setUrl(ShareSavePicThireBtnActivity.getBundle(this.c));
            }
            while (this.b.get("LAIWANG") == null);
            ShareSavePicThireBtnActivity localShareSavePicThireBtnActivity5 = this.c;
            ShareSavePicThireBtnActivity.v(localShareSavePicThireBtnActivity5, ShareSavePicThireBtnActivity.v(ShareSavePicThireBtnActivity.dexopt(this.c), 1048576));
            localShareContent.setTitle(((SecurityShareInfo)this.b.get("LAIWANG")).getContent());
            localShareContent.setContent(ShareSavePicThireBtnActivity.getBundle(this.c));
            this.c.a(ShareSavePicThireBtnActivity.getBundleByComponentName(this.c), localShareContent, this.a, paramInt);
            return;
            localShareContent.setUrl(ShareSavePicThireBtnActivity.getBundle(this.c));
          }
          while (this.b.get("LAIWANG_FEED") == null);
          ShareSavePicThireBtnActivity localShareSavePicThireBtnActivity4 = this.c;
          ShareSavePicThireBtnActivity.v(localShareSavePicThireBtnActivity4, ShareSavePicThireBtnActivity.v(ShareSavePicThireBtnActivity.dexopt(this.c), 16777216));
          localShareContent.setTitle(((SecurityShareInfo)this.b.get("LAIWANG")).getContent());
          localShareContent.setContent(ShareSavePicThireBtnActivity.getBundle(this.c));
          this.c.a(ShareSavePicThireBtnActivity.getBundleByComponentName(this.c), localShareContent, this.a, paramInt);
          return;
          localShareContent.setUrl(ShareSavePicThireBtnActivity.getBundle(this.c));
        }
        while (this.b.get("WEIXIN_FRIEND") == null);
        ShareSavePicThireBtnActivity localShareSavePicThireBtnActivity3 = this.c;
        ShareSavePicThireBtnActivity.v(localShareSavePicThireBtnActivity3, ShareSavePicThireBtnActivity.v(ShareSavePicThireBtnActivity.dexopt(this.c), 256));
        localShareContent.setTitle(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND")).getTitle());
        localShareContent.setContent(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND")).getContent());
        this.c.a(ShareSavePicThireBtnActivity.getBundleByComponentName(this.c), localShareContent, this.a, paramInt);
        return;
        localShareContent.setUrl(ShareSavePicThireBtnActivity.getBundle(this.c));
      }
      while (this.b.get("WEIXIN_FRIEND_CIRCLE") == null);
      ShareSavePicThireBtnActivity localShareSavePicThireBtnActivity2 = this.c;
      ShareSavePicThireBtnActivity.v(localShareSavePicThireBtnActivity2, ShareSavePicThireBtnActivity.v(ShareSavePicThireBtnActivity.dexopt(this.c), 4096));
      localShareContent.setTitle(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND_CIRCLE")).getTitle());
      localShareContent.setContent(((SecurityShareInfo)this.b.get("WEIXIN_FRIEND_CIRCLE")).getContent());
      this.c.a(ShareSavePicThireBtnActivity.getBundleByComponentName(this.c), localShareContent, this.a, paramInt);
      return;
      localShareContent.setUrl(ShareSavePicThireBtnActivity.getBundle(this.c));
    }
    while (this.b.get("COPY_LINK") == null);
    ShareSavePicThireBtnActivity localShareSavePicThireBtnActivity1 = this.c;
    ShareSavePicThireBtnActivity.v(localShareSavePicThireBtnActivity1, ShareSavePicThireBtnActivity.v(ShareSavePicThireBtnActivity.dexopt(this.c), 65536));
    localShareContent.setTitle(((SecurityShareInfo)this.b.get("COPY_LINK")).getTitle());
    localShareContent.setContent(((SecurityShareInfo)this.b.get("COPY_LINK")).getContent());
    this.c.a(ShareSavePicThireBtnActivity.getBundleByComponentName(this.c), localShareContent, this.a, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.b
 * JD-Core Version:    0.6.2
 */