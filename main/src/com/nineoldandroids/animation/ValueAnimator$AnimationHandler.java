package com.nineoldandroids.animation;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

class ValueAnimator$AnimationHandler extends Handler
{
  public void handleMessage(Message paramMessage)
  {
    ArrayList localArrayList1 = (ArrayList)ValueAnimator.access$000().get();
    ArrayList localArrayList2 = (ArrayList)ValueAnimator.access$100().get();
    ArrayList localArrayList5;
    int i;
    switch (paramMessage.what)
    {
    default:
      return;
    case 0:
      localArrayList5 = (ArrayList)ValueAnimator.access$200().get();
      if ((localArrayList1.size() > 0) || (localArrayList2.size() > 0))
        i = 0;
      break;
    case 1:
    }
    while (true)
      if (localArrayList5.size() > 0)
      {
        ArrayList localArrayList6 = (ArrayList)localArrayList5.clone();
        localArrayList5.clear();
        int i5 = localArrayList6.size();
        int i6 = 0;
        if (i6 < i5)
        {
          ValueAnimator localValueAnimator4 = (ValueAnimator)localArrayList6.get(i6);
          if (ValueAnimator.access$300(localValueAnimator4) == 0L)
            ValueAnimator.access$400(localValueAnimator4);
          while (true)
          {
            i6++;
            break;
            localArrayList2.add(localValueAnimator4);
          }
          i = 1;
        }
      }
      else
      {
        long l = AnimationUtils.currentAnimationTimeMillis();
        ArrayList localArrayList3 = (ArrayList)ValueAnimator.access$500().get();
        ArrayList localArrayList4 = (ArrayList)ValueAnimator.access$600().get();
        int j = localArrayList2.size();
        for (int k = 0; k < j; k++)
        {
          ValueAnimator localValueAnimator3 = (ValueAnimator)localArrayList2.get(k);
          if (ValueAnimator.access$700(localValueAnimator3, l))
            localArrayList3.add(localValueAnimator3);
        }
        int m = localArrayList3.size();
        if (m > 0)
        {
          for (int i4 = 0; i4 < m; i4++)
          {
            ValueAnimator localValueAnimator2 = (ValueAnimator)localArrayList3.get(i4);
            ValueAnimator.access$400(localValueAnimator2);
            ValueAnimator.access$802(localValueAnimator2, true);
            localArrayList2.remove(localValueAnimator2);
          }
          localArrayList3.clear();
        }
        int n = localArrayList1.size();
        int i1 = 0;
        int i2 = n;
        while (i1 < i2)
        {
          ValueAnimator localValueAnimator1 = (ValueAnimator)localArrayList1.get(i1);
          if (localValueAnimator1.animationFrame(l))
            localArrayList4.add(localValueAnimator1);
          if (localArrayList1.size() == i2)
          {
            i1++;
          }
          else
          {
            i2--;
            localArrayList4.remove(localValueAnimator1);
          }
        }
        if (localArrayList4.size() > 0)
        {
          for (int i3 = 0; i3 < localArrayList4.size(); i3++)
            ValueAnimator.access$900((ValueAnimator)localArrayList4.get(i3));
          localArrayList4.clear();
        }
        if ((i == 0) || ((localArrayList1.isEmpty()) && (localArrayList2.isEmpty())))
          break;
        sendEmptyMessageDelayed(1, Math.max(0L, ValueAnimator.access$1000() - (AnimationUtils.currentAnimationTimeMillis() - l)));
        return;
        i = 1;
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.ValueAnimator.AnimationHandler
 * JD-Core Version:    0.6.2
 */