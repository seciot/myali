package com.androidquery.util;

import android.graphics.Picture;
import android.webkit.WebView;
import android.webkit.WebView.PictureListener;

class WebImage$1
  implements WebView.PictureListener
{
  WebImage$1(WebImage paramWebImage)
  {
  }

  public void onNewPicture(WebView paramWebView, Picture paramPicture)
  {
    WebImage.access$0(this.this$0).setPictureListener(null);
    WebImage.access$1(this.this$0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.WebImage.1
 * JD-Core Version:    0.6.2
 */