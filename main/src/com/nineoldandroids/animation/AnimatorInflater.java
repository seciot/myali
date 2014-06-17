package com.nineoldandroids.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;

public class AnimatorInflater
{
  private static final int[] a = { 16843490 };
  private static final int[] b = { 16843489 };
  private static final int[] c = { 16843073, 16843160, 16843198, 16843199, 16843200, 16843486, 16843487, 16843488 };

  private static Animator a(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, AnimatorSet paramAnimatorSet, int paramInt)
  {
    int i = 0;
    int j = paramXmlPullParser.getDepth();
    Object localObject1 = null;
    Object localObject2 = null;
    int k;
    do
    {
      k = paramXmlPullParser.next();
      if (((k == 3) && (paramXmlPullParser.getDepth() <= j)) || (k == 1))
        break;
    }
    while (k != 2);
    String str = paramXmlPullParser.getName();
    label115: Object localObject3;
    if (str.equals("objectAnimator"))
    {
      localObject2 = new ObjectAnimator();
      a(paramContext, paramAttributeSet, (ValueAnimator)localObject2);
      TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, b);
      ((ObjectAnimator)localObject2).setPropertyName(localTypedArray1.getString(0));
      localTypedArray1.recycle();
      if (paramAnimatorSet == null)
        break label388;
      if (localObject1 != null)
        break label381;
      localObject3 = new ArrayList();
      label133: ((ArrayList)localObject3).add(localObject2);
    }
    while (true)
    {
      localObject1 = localObject3;
      break;
      if (str.equals("animator"))
      {
        localObject2 = a(paramContext, paramAttributeSet, null);
        break label115;
      }
      if (str.equals("set"))
      {
        localObject2 = new AnimatorSet();
        TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(paramAttributeSet, a);
        TypedValue localTypedValue = new TypedValue();
        localTypedArray2.getValue(0, localTypedValue);
        if (localTypedValue.type == 16);
        for (int n = localTypedValue.data; ; n = 0)
        {
          a(paramContext, paramXmlPullParser, paramAttributeSet, (AnimatorSet)localObject2, n);
          localTypedArray2.recycle();
          break;
        }
      }
      throw new RuntimeException("Unknown animator name: " + paramXmlPullParser.getName());
      Animator[] arrayOfAnimator;
      if ((paramAnimatorSet != null) && (localObject1 != null))
      {
        arrayOfAnimator = new Animator[localObject1.size()];
        Iterator localIterator = localObject1.iterator();
        while (localIterator.hasNext())
        {
          Animator localAnimator = (Animator)localIterator.next();
          int m = i + 1;
          arrayOfAnimator[i] = localAnimator;
          i = m;
        }
        if (paramInt == 0)
          paramAnimatorSet.playTogether(arrayOfAnimator);
      }
      else
      {
        return localObject2;
      }
      paramAnimatorSet.playSequentially(arrayOfAnimator);
      return localObject2;
      label381: localObject3 = localObject1;
      break label133;
      label388: localObject3 = localObject1;
    }
  }

  private static ValueAnimator a(Context paramContext, AttributeSet paramAttributeSet, ValueAnimator paramValueAnimator)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, c);
    long l1 = localTypedArray.getInt(1, 0);
    long l2 = localTypedArray.getInt(2, 0);
    int i = localTypedArray.getInt(7, 0);
    if (paramValueAnimator == null)
      paramValueAnimator = new ValueAnimator();
    int j;
    int k;
    label71: int m;
    label83: int n;
    label99: int i1;
    label111: float f2;
    label187: float f3;
    if (i == 0)
    {
      j = 1;
      TypedValue localTypedValue1 = localTypedArray.peekValue(5);
      if (localTypedValue1 == null)
        break label308;
      k = 1;
      if (k == 0)
        break label314;
      m = localTypedValue1.type;
      TypedValue localTypedValue2 = localTypedArray.peekValue(6);
      if (localTypedValue2 == null)
        break label320;
      n = 1;
      if (n == 0)
        break label326;
      i1 = localTypedValue2.type;
      if (((k != 0) && (m >= 28) && (m <= 31)) || ((n != 0) && (i1 >= 28) && (i1 <= 31)))
      {
        j = 0;
        paramValueAnimator.setEvaluator(new ArgbEvaluator());
      }
      if (j == 0)
        break label412;
      if (k == 0)
        break label370;
      if (m != 5)
        break label332;
      f2 = localTypedArray.getDimension(5, 0.0F);
      if (n == 0)
        break label355;
      if (i1 != 5)
        break label343;
      f3 = localTypedArray.getDimension(6, 0.0F);
      label207: paramValueAnimator.setFloatValues(new float[] { f2, f3 });
    }
    label308: label314: label320: label326: label332: label343: label355: label370: label509: 
    do
      while (true)
      {
        paramValueAnimator.setDuration(l1);
        paramValueAnimator.setStartDelay(l2);
        if (localTypedArray.hasValue(3))
          paramValueAnimator.setRepeatCount(localTypedArray.getInt(3, 0));
        if (localTypedArray.hasValue(4))
          paramValueAnimator.setRepeatMode(localTypedArray.getInt(4, 1));
        int i3 = localTypedArray.getResourceId(0, 0);
        if (i3 > 0)
          paramValueAnimator.setInterpolator(AnimationUtils.loadInterpolator(paramContext, i3));
        localTypedArray.recycle();
        return paramValueAnimator;
        j = 0;
        break;
        k = 0;
        break label71;
        m = 0;
        break label83;
        n = 0;
        break label99;
        i1 = 0;
        break label111;
        f2 = localTypedArray.getFloat(5, 0.0F);
        break label187;
        f3 = localTypedArray.getFloat(6, 0.0F);
        break label207;
        paramValueAnimator.setFloatValues(new float[] { f2 });
        continue;
        if (i1 == 5);
        for (float f1 = localTypedArray.getDimension(6, 0.0F); ; f1 = localTypedArray.getFloat(6, 0.0F))
        {
          paramValueAnimator.setFloatValues(new float[] { f1 });
          break;
        }
        if (k == 0)
          break label562;
        int i4;
        int i5;
        if (m == 5)
        {
          i4 = (int)localTypedArray.getDimension(5, 0.0F);
          if (n == 0)
            break label547;
          if (i1 != 5)
            break label509;
          i5 = (int)localTypedArray.getDimension(6, 0.0F);
        }
        while (true)
        {
          paramValueAnimator.setIntValues(new int[] { i4, i5 });
          break;
          if ((m >= 28) && (m <= 31))
          {
            i4 = localTypedArray.getColor(5, 0);
            break label432;
          }
          i4 = localTypedArray.getInt(5, 0);
          break label432;
          if ((i1 >= 28) && (i1 <= 31))
            i5 = localTypedArray.getColor(6, 0);
          else
            i5 = localTypedArray.getInt(6, 0);
        }
        paramValueAnimator.setIntValues(new int[] { i4 });
      }
    while (n == 0);
    label412: label432: label562: int i2;
    label547: if (i1 == 5)
      i2 = (int)localTypedArray.getDimension(6, 0.0F);
    while (true)
    {
      paramValueAnimator.setIntValues(new int[] { i2 });
      break;
      if ((i1 >= 28) && (i1 <= 31))
        i2 = localTypedArray.getColor(6, 0);
      else
        i2 = localTypedArray.getInt(6, 0);
    }
  }

  // ERROR //
  public static Animator loadAnimator(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 224	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   6: iload_1
    //   7: invokevirtual 230	android/content/res/Resources:getAnimation	(I)Landroid/content/res/XmlResourceParser;
    //   10: astore_2
    //   11: aload_0
    //   12: aload_2
    //   13: aload_2
    //   14: invokestatic 236	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   17: aconst_null
    //   18: iconst_0
    //   19: invokestatic 105	com/nineoldandroids/animation/AnimatorInflater:a	(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;
    //   22: astore 10
    //   24: aload_2
    //   25: ifnull +9 -> 34
    //   28: aload_2
    //   29: invokeinterface 241 1 0
    //   34: aload 10
    //   36: areturn
    //   37: astore 7
    //   39: new 243	android/content/res/Resources$NotFoundException
    //   42: dup
    //   43: new 109	java/lang/StringBuilder
    //   46: dup
    //   47: ldc 245
    //   49: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: iload_1
    //   53: invokestatic 250	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   56: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokespecial 251	android/content/res/Resources$NotFoundException:<init>	(Ljava/lang/String;)V
    //   65: astore 8
    //   67: aload 8
    //   69: aload 7
    //   71: invokevirtual 255	android/content/res/Resources$NotFoundException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   74: pop
    //   75: aload 8
    //   77: athrow
    //   78: astore 6
    //   80: aload_2
    //   81: ifnull +9 -> 90
    //   84: aload_2
    //   85: invokeinterface 241 1 0
    //   90: aload 6
    //   92: athrow
    //   93: astore_3
    //   94: new 243	android/content/res/Resources$NotFoundException
    //   97: dup
    //   98: new 109	java/lang/StringBuilder
    //   101: dup
    //   102: ldc 245
    //   104: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   107: iload_1
    //   108: invokestatic 250	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   111: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokespecial 251	android/content/res/Resources$NotFoundException:<init>	(Ljava/lang/String;)V
    //   120: astore 4
    //   122: aload 4
    //   124: aload_3
    //   125: invokevirtual 255	android/content/res/Resources$NotFoundException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   128: pop
    //   129: aload 4
    //   131: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	24	37	org/xmlpull/v1/XmlPullParserException
    //   2	24	78	finally
    //   39	78	78	finally
    //   94	132	78	finally
    //   2	24	93	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.AnimatorInflater
 * JD-Core Version:    0.6.2
 */