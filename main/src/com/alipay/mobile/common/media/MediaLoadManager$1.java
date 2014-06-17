package com.alipay.mobile.common.media;

import android.text.TextUtils;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.transport.download.DownloadRequest;
import java.io.File;
import java.util.Vector;

class MediaLoadManager$1
  implements TransportCallback
{
  MediaLoadManager$1(MediaLoadManager paramMediaLoadManager)
  {
  }

  public void onCancelled(Request paramRequest)
  {
  }

  public void onFailed(Request paramRequest, int paramInt, String paramString)
  {
    DownloadRequest localDownloadRequest = (DownloadRequest)paramRequest;
    MediaLoadManager.access$500(this.this$0, 258, localDownloadRequest.getUrl(), localDownloadRequest.getPath());
  }

  public void onPostExecute(Request paramRequest, Response paramResponse)
  {
    DownloadRequest localDownloadRequest = (DownloadRequest)paramRequest;
    MediaLoadManager.access$000(this.this$0).remove(localDownloadRequest.getUrl());
    if (new File(localDownloadRequest.getPath()).exists())
    {
      MediaLoadManager.access$100(this.this$0, localDownloadRequest.getUrl(), localDownloadRequest.getPath());
      if (TextUtils.equals(MediaLoadManager.access$200(this.this$0), localDownloadRequest.getUrl()))
        MediaLoadManager.access$300(this.this$0, localDownloadRequest.getUrl(), localDownloadRequest.getPath());
    }
    else
    {
      return;
    }
    MediaLoadManager.access$400(this.this$0, localDownloadRequest.getUrl());
  }

  public void onPreExecute(Request paramRequest)
  {
  }

  public void onProgressUpdate(Request paramRequest, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.MediaLoadManager.1
 * JD-Core Version:    0.6.2
 */