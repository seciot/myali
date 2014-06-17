package android.taobao.service.appdevice.net.async;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class AsyncHttpResponseHandler
{
  protected static final int FAILURE_MESSAGE = 1;
  protected static final int FINISH_MESSAGE = 3;
  protected static final int START_MESSAGE = 2;
  protected static final int SUCCESS_MESSAGE;
  private Handler a;

  public AsyncHttpResponseHandler()
  {
    if (Looper.myLooper() != null)
      this.a = new AsyncHttpResponseHandler.1(this);
  }

  protected void handleFailureMessage(Throwable paramThrowable, String paramString)
  {
    onFailure(paramThrowable, paramString);
  }

  void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 0:
      handleSuccessMessage((String)paramMessage.obj);
      return;
    case 1:
      Object[] arrayOfObject = (Object[])paramMessage.obj;
      handleFailureMessage((Throwable)arrayOfObject[0], (String)arrayOfObject[1]);
      return;
    case 2:
      onStart();
      return;
    case 3:
    }
    onFinish();
  }

  protected void handleSuccessMessage(String paramString)
  {
    onSuccess(paramString);
  }

  Message obtainMessage(int paramInt, Object paramObject)
  {
    if (this.a != null)
      return this.a.obtainMessage(paramInt, paramObject);
    Message localMessage = new Message();
    localMessage.what = paramInt;
    localMessage.obj = paramObject;
    return localMessage;
  }

  public void onFailure(Throwable paramThrowable)
  {
  }

  public void onFailure(Throwable paramThrowable, String paramString)
  {
    onFailure(paramThrowable);
  }

  public void onFinish()
  {
  }

  public void onStart()
  {
  }

  public void onSuccess(String paramString)
  {
  }

  void sendFailureMessage(Throwable paramThrowable, String paramString)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramString }));
  }

  void sendFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }

  void sendFinishMessage()
  {
    sendMessage(obtainMessage(3, null));
  }

  void sendMessage(Message paramMessage)
  {
    if (this.a != null)
    {
      this.a.sendMessage(paramMessage);
      return;
    }
    handleMessage(paramMessage);
  }

  void sendResponseMessage(HttpResponse paramHttpResponse)
  {
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    while (true)
    {
      try
      {
        HttpEntity localHttpEntity = paramHttpResponse.getEntity();
        if (localHttpEntity != null)
        {
          str = EntityUtils.toString(new BufferedHttpEntity(localHttpEntity), "UTF-8");
          if (localStatusLine.getStatusCode() >= 300)
          {
            sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), str);
            return;
          }
          sendSuccessMessage(str);
          return;
        }
      }
      catch (IOException localIOException)
      {
        sendFailureMessage(localIOException, null);
        return;
      }
      String str = null;
    }
  }

  void sendStartMessage()
  {
    sendMessage(obtainMessage(2, null));
  }

  void sendSuccessMessage(String paramString)
  {
    sendMessage(obtainMessage(0, paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.AsyncHttpResponseHandler
 * JD-Core Version:    0.6.2
 */