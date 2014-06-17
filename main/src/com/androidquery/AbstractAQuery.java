package com.androidquery;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.androidquery.auth.AccountHandle;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxCallback;
import com.androidquery.callback.BitmapAjaxCallback;
import com.androidquery.callback.ImageOptions;
import com.androidquery.callback.Transformer;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Common;
import com.androidquery.util.Constants;
import com.androidquery.util.WebImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;

public abstract class AbstractAQuery<T extends AbstractAQuery<T>>
  implements Constants
{
  private static final Class<?>[] h = { View.class };
  private static Class<?>[] i;
  private static Class<?>[] j;
  private static final Class<?>[] k;
  private static Class<?>[] l;
  private static final Class<?>[] m;
  private static Class<?>[] n = arrayOfClass6;
  private static WeakHashMap<Dialog, Void> o = new WeakHashMap();
  private View a;
  protected AccountHandle ah;
  private Activity b;
  private Context c;
  private Transformer d;
  private Integer e;
  private HttpHost f;
  private Constructor<T> g;
  protected Object progress;
  protected View view;

  static
  {
    Class[] arrayOfClass1 = new Class[4];
    arrayOfClass1[0] = AdapterView.class;
    arrayOfClass1[1] = View.class;
    arrayOfClass1[2] = Integer.TYPE;
    arrayOfClass1[3] = Long.TYPE;
    i = arrayOfClass1;
    Class[] arrayOfClass2 = new Class[2];
    arrayOfClass2[0] = AbsListView.class;
    arrayOfClass2[1] = Integer.TYPE;
    j = arrayOfClass2;
    Class[] arrayOfClass3 = new Class[4];
    arrayOfClass3[0] = CharSequence.class;
    arrayOfClass3[1] = Integer.TYPE;
    arrayOfClass3[2] = Integer.TYPE;
    arrayOfClass3[3] = Integer.TYPE;
    k = arrayOfClass3;
    Class[] arrayOfClass4 = new Class[2];
    arrayOfClass4[0] = Integer.TYPE;
    arrayOfClass4[1] = Integer.TYPE;
    l = arrayOfClass4;
    Class[] arrayOfClass5 = new Class[1];
    arrayOfClass5[0] = Integer.TYPE;
    m = arrayOfClass5;
    Class[] arrayOfClass6 = new Class[2];
    arrayOfClass6[0] = Integer.TYPE;
    arrayOfClass6[1] = Paint.class;
  }

  public AbstractAQuery(Activity paramActivity)
  {
    this.b = paramActivity;
  }

  public AbstractAQuery(Activity paramActivity, View paramView)
  {
    this.a = paramView;
    this.view = paramView;
    this.b = paramActivity;
  }

  public AbstractAQuery(Context paramContext)
  {
    this.c = paramContext;
  }

  public AbstractAQuery(View paramView)
  {
    this.a = paramView;
    this.view = paramView;
  }

  private View findView(int paramInt)
  {
    View localView;
    if (this.a != null)
      localView = this.a.findViewById(paramInt);
    Activity localActivity;
    do
    {
      return localView;
      localActivity = this.b;
      localView = null;
    }
    while (localActivity == null);
    return this.b.findViewById(paramInt);
  }

  private View findView(String paramString)
  {
    if (this.a != null)
      return this.a.findViewWithTag(paramString);
    if (this.b != null)
    {
      View localView = ((ViewGroup)this.b.findViewById(16908290)).getChildAt(0);
      if (localView != null)
        return localView.findViewWithTag(paramString);
    }
    return null;
  }

  private View findView(int[] paramArrayOfInt)
  {
    View localView = findView(paramArrayOfInt[0]);
    for (int i1 = 1; ; i1++)
    {
      if ((i1 >= paramArrayOfInt.length) || (localView == null))
        return localView;
      localView = localView.findViewById(paramArrayOfInt[i1]);
    }
  }

  private Constructor<T> getConstructor()
  {
    if (this.g == null);
    try
    {
      this.g = getClass().getConstructor(new Class[] { View.class });
      return this.g;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private T self()
  {
    return this;
  }

  private Common setScrollListener()
  {
    AbsListView localAbsListView = (AbsListView)this.view;
    Common localCommon = (Common)localAbsListView.getTag(1090453506);
    if (localCommon == null)
    {
      localCommon = new Common();
      localAbsListView.setOnScrollListener(localCommon);
      localAbsListView.setTag(1090453506, localCommon);
      AQUtility.debug("set scroll listenr");
    }
    return localCommon;
  }

  private void size(boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    ViewGroup.LayoutParams localLayoutParams;
    if (this.view != null)
    {
      localLayoutParams = this.view.getLayoutParams();
      Context localContext = getContext();
      if ((paramInt > 0) && (paramBoolean2))
        paramInt = AQUtility.dip2pixel(localContext, paramInt);
      if (!paramBoolean1)
        break label58;
      localLayoutParams.width = paramInt;
    }
    while (true)
    {
      this.view.setLayoutParams(localLayoutParams);
      return;
      label58: localLayoutParams.height = paramInt;
    }
  }

  public T adapter(Adapter paramAdapter)
  {
    if ((this.view instanceof AdapterView))
      ((AdapterView)this.view).setAdapter(paramAdapter);
    return self();
  }

  public T adapter(ExpandableListAdapter paramExpandableListAdapter)
  {
    if ((this.view instanceof ExpandableListView))
      ((ExpandableListView)this.view).setAdapter(paramExpandableListAdapter);
    return self();
  }

  public <K> T ajax(AjaxCallback<K> paramAjaxCallback)
  {
    return invoke(paramAjaxCallback);
  }

  public <K> T ajax(String paramString, Class<K> paramClass, long paramLong, AjaxCallback<K> paramAjaxCallback)
  {
    ((AjaxCallback)((AjaxCallback)((AjaxCallback)paramAjaxCallback.type(paramClass)).url(paramString)).fileCache(true)).expire(paramLong);
    return ajax(paramAjaxCallback);
  }

  public <K> T ajax(String paramString1, Class<K> paramClass, long paramLong, Object paramObject, String paramString2)
  {
    AjaxCallback localAjaxCallback = new AjaxCallback();
    ((AjaxCallback)((AjaxCallback)((AjaxCallback)localAjaxCallback.type(paramClass)).weakHandler(paramObject, paramString2)).fileCache(true)).expire(paramLong);
    return ajax(paramString1, paramClass, localAjaxCallback);
  }

  public <K> T ajax(String paramString, Class<K> paramClass, AjaxCallback<K> paramAjaxCallback)
  {
    ((AjaxCallback)paramAjaxCallback.type(paramClass)).url(paramString);
    return ajax(paramAjaxCallback);
  }

  public <K> T ajax(String paramString1, Class<K> paramClass, Object paramObject, String paramString2)
  {
    AjaxCallback localAjaxCallback = new AjaxCallback();
    ((AjaxCallback)localAjaxCallback.type(paramClass)).weakHandler(paramObject, paramString2);
    return ajax(paramString1, paramClass, localAjaxCallback);
  }

  public <K> T ajax(String paramString, Map<String, ?> paramMap, Class<K> paramClass, AjaxCallback<K> paramAjaxCallback)
  {
    ((AjaxCallback)((AjaxCallback)paramAjaxCallback.type(paramClass)).url(paramString)).params(paramMap);
    return ajax(paramAjaxCallback);
  }

  public <K> T ajax(String paramString1, Map<String, ?> paramMap, Class<K> paramClass, Object paramObject, String paramString2)
  {
    AjaxCallback localAjaxCallback = new AjaxCallback();
    ((AjaxCallback)localAjaxCallback.type(paramClass)).weakHandler(paramObject, paramString2);
    return ajax(paramString1, paramMap, paramClass, localAjaxCallback);
  }

  public T ajaxCancel()
  {
    AjaxCallback.cancel();
    return self();
  }

  public T animate(int paramInt)
  {
    return animate(paramInt, null);
  }

  public T animate(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    Animation localAnimation = AnimationUtils.loadAnimation(getContext(), paramInt);
    localAnimation.setAnimationListener(paramAnimationListener);
    return animate(localAnimation);
  }

  public T animate(Animation paramAnimation)
  {
    if ((this.view != null) && (paramAnimation != null))
      this.view.startAnimation(paramAnimation);
    return self();
  }

  public T auth(AccountHandle paramAccountHandle)
  {
    this.ah = paramAccountHandle;
    return self();
  }

  public T background(int paramInt)
  {
    if (this.view != null)
    {
      if (paramInt == 0)
        break label24;
      this.view.setBackgroundResource(paramInt);
    }
    while (true)
    {
      return self();
      label24: this.view.setBackgroundDrawable(null);
    }
  }

  public T backgroundColor(int paramInt)
  {
    if (this.view != null)
      this.view.setBackgroundColor(paramInt);
    return self();
  }

  public T cache(String paramString, long paramLong)
  {
    return ajax(paramString, [B.class, paramLong, null, null);
  }

  public T checked(boolean paramBoolean)
  {
    if ((this.view instanceof CompoundButton))
      ((CompoundButton)this.view).setChecked(paramBoolean);
    return self();
  }

  public T clear()
  {
    if (this.view != null)
    {
      if (!(this.view instanceof ImageView))
        break label43;
      ImageView localImageView = (ImageView)this.view;
      localImageView.setImageBitmap(null);
      localImageView.setTag(1090453505, null);
    }
    while (true)
    {
      return self();
      label43: if ((this.view instanceof WebView))
      {
        WebView localWebView = (WebView)this.view;
        localWebView.stopLoading();
        localWebView.clearView();
        localWebView.setTag(1090453505, null);
      }
      else if ((this.view instanceof TextView))
      {
        ((TextView)this.view).setText("");
      }
    }
  }

  public T click()
  {
    if (this.view != null)
      this.view.performClick();
    return self();
  }

  public T clickable(boolean paramBoolean)
  {
    if (this.view != null)
      this.view.setClickable(paramBoolean);
    return self();
  }

  public T clicked(View.OnClickListener paramOnClickListener)
  {
    if (this.view != null)
      this.view.setOnClickListener(paramOnClickListener);
    return self();
  }

  public T clicked(Object paramObject, String paramString)
  {
    return clicked(new Common().forward(paramObject, paramString, true, h));
  }

  // ERROR //
  protected T create(View paramView)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 359	com/androidquery/AbstractAQuery:getConstructor	()Ljava/lang/reflect/Constructor;
    //   4: iconst_1
    //   5: anewarray 5	java/lang/Object
    //   8: dup
    //   9: iconst_0
    //   10: aload_1
    //   11: aastore
    //   12: invokevirtual 365	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   15: checkcast 2	com/androidquery/AbstractAQuery
    //   18: astore_3
    //   19: aload_3
    //   20: aload_0
    //   21: getfield 87	com/androidquery/AbstractAQuery:b	Landroid/app/Activity;
    //   24: putfield 87	com/androidquery/AbstractAQuery:b	Landroid/app/Activity;
    //   27: aload_3
    //   28: areturn
    //   29: astore_2
    //   30: aconst_null
    //   31: astore_3
    //   32: aload_2
    //   33: astore 4
    //   35: aload 4
    //   37: invokevirtual 134	java/lang/Exception:printStackTrace	()V
    //   40: aload_3
    //   41: areturn
    //   42: astore 4
    //   44: goto -9 -> 35
    //
    // Exception table:
    //   from	to	target	type
    //   0	19	29	java/lang/Exception
    //   19	27	42	java/lang/Exception
  }

  public T dataChanged()
  {
    if ((this.view instanceof AdapterView))
    {
      Adapter localAdapter = ((AdapterView)this.view).getAdapter();
      if ((localAdapter instanceof BaseAdapter))
        ((BaseAdapter)localAdapter).notifyDataSetChanged();
    }
    return self();
  }

  public <K> T delete(String paramString, Class<K> paramClass, AjaxCallback<K> paramAjaxCallback)
  {
    ((AjaxCallback)((AjaxCallback)paramAjaxCallback.url(paramString)).type(paramClass)).method(2);
    return ajax(paramAjaxCallback);
  }

  public <K> T delete(String paramString1, Class<K> paramClass, Object paramObject, String paramString2)
  {
    AjaxCallback localAjaxCallback = new AjaxCallback();
    localAjaxCallback.weakHandler(paramObject, paramString2);
    return delete(paramString1, paramClass, localAjaxCallback);
  }

  public T dismiss()
  {
    Iterator localIterator = o.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return self();
      Dialog localDialog = (Dialog)localIterator.next();
      try
      {
        localDialog.dismiss();
        label40: localIterator.remove();
      }
      catch (Exception localException)
      {
        break label40;
      }
    }
  }

  public T dismiss(Dialog paramDialog)
  {
    if (paramDialog != null);
    try
    {
      o.remove(paramDialog);
      paramDialog.dismiss();
      label16: return self();
    }
    catch (Exception localException)
    {
      break label16;
    }
  }

  public T download(String paramString, File paramFile, AjaxCallback<File> paramAjaxCallback)
  {
    ((AjaxCallback)((AjaxCallback)paramAjaxCallback.url(paramString)).type(File.class)).targetFile(paramFile);
    return ajax(paramAjaxCallback);
  }

  public T download(String paramString1, File paramFile, Object paramObject, String paramString2)
  {
    AjaxCallback localAjaxCallback = new AjaxCallback();
    localAjaxCallback.weakHandler(paramObject, paramString2);
    return download(paramString1, paramFile, localAjaxCallback);
  }

  public T enabled(boolean paramBoolean)
  {
    if (this.view != null)
      this.view.setEnabled(paramBoolean);
    return self();
  }

  public T expand(int paramInt, boolean paramBoolean)
  {
    ExpandableListView localExpandableListView;
    if ((this.view instanceof ExpandableListView))
    {
      localExpandableListView = (ExpandableListView)this.view;
      if (!paramBoolean)
        break label33;
      localExpandableListView.expandGroup(paramInt);
    }
    while (true)
    {
      return self();
      label33: localExpandableListView.collapseGroup(paramInt);
    }
  }

  public T expand(boolean paramBoolean)
  {
    ExpandableListView localExpandableListView;
    int i2;
    if ((this.view instanceof ExpandableListView))
    {
      localExpandableListView = (ExpandableListView)this.view;
      ExpandableListAdapter localExpandableListAdapter = localExpandableListView.getExpandableListAdapter();
      if (localExpandableListAdapter != null)
      {
        int i1 = localExpandableListAdapter.getGroupCount();
        i2 = 0;
        if (i2 < i1)
          break label50;
      }
    }
    return self();
    label50: if (paramBoolean)
      localExpandableListView.expandGroup(i2);
    while (true)
    {
      i2++;
      break;
      localExpandableListView.collapseGroup(i2);
    }
  }

  public T find(int paramInt)
  {
    return create(findView(paramInt));
  }

  public Button getButton()
  {
    return (Button)this.view;
  }

  public File getCachedFile(String paramString)
  {
    File localFile = AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(getContext(), 1), paramString);
    if (localFile == null)
      localFile = AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(getContext(), 0), paramString);
    return localFile;
  }

  public Bitmap getCachedImage(int paramInt)
  {
    return BitmapAjaxCallback.getMemoryCached(getContext(), paramInt);
  }

  public Bitmap getCachedImage(String paramString)
  {
    return getCachedImage(paramString, 0);
  }

  public Bitmap getCachedImage(String paramString, int paramInt)
  {
    Bitmap localBitmap = BitmapAjaxCallback.getMemoryCached(paramString, paramInt);
    if (localBitmap == null)
    {
      File localFile = getCachedFile(paramString);
      if (localFile != null)
        localBitmap = BitmapAjaxCallback.getResizedImage(localFile.getAbsolutePath(), null, paramInt, true, 0);
    }
    return localBitmap;
  }

  public CheckBox getCheckBox()
  {
    return (CheckBox)this.view;
  }

  public Context getContext()
  {
    if (this.b != null)
      return this.b;
    if (this.a != null)
      return this.a.getContext();
    return this.c;
  }

  public EditText getEditText()
  {
    return (EditText)this.view;
  }

  public Editable getEditable()
  {
    boolean bool = this.view instanceof EditText;
    Editable localEditable = null;
    if (bool)
      localEditable = ((EditText)this.view).getEditableText();
    return localEditable;
  }

  public ExpandableListView getExpandableListView()
  {
    return (ExpandableListView)this.view;
  }

  public Gallery getGallery()
  {
    return (Gallery)this.view;
  }

  public GridView getGridView()
  {
    return (GridView)this.view;
  }

  public ImageView getImageView()
  {
    return (ImageView)this.view;
  }

  public ListView getListView()
  {
    return (ListView)this.view;
  }

  public ProgressBar getProgressBar()
  {
    return (ProgressBar)this.view;
  }

  public RatingBar getRatingBar()
  {
    return (RatingBar)this.view;
  }

  public SeekBar getSeekBar()
  {
    return (SeekBar)this.view;
  }

  public Object getSelectedItem()
  {
    boolean bool = this.view instanceof AdapterView;
    Object localObject = null;
    if (bool)
      localObject = ((AdapterView)this.view).getSelectedItem();
    return localObject;
  }

  public int getSelectedItemPosition()
  {
    int i1 = -1;
    if ((this.view instanceof AdapterView))
      i1 = ((AdapterView)this.view).getSelectedItemPosition();
    return i1;
  }

  public Spinner getSpinner()
  {
    return (Spinner)this.view;
  }

  public Object getTag()
  {
    View localView = this.view;
    Object localObject = null;
    if (localView != null)
      localObject = this.view.getTag();
    return localObject;
  }

  public Object getTag(int paramInt)
  {
    View localView = this.view;
    Object localObject = null;
    if (localView != null)
      localObject = this.view.getTag(paramInt);
    return localObject;
  }

  public CharSequence getText()
  {
    boolean bool = this.view instanceof TextView;
    CharSequence localCharSequence = null;
    if (bool)
      localCharSequence = ((TextView)this.view).getText();
    return localCharSequence;
  }

  public TextView getTextView()
  {
    return (TextView)this.view;
  }

  public View getView()
  {
    return this.view;
  }

  public WebView getWebView()
  {
    return (WebView)this.view;
  }

  public T gone()
  {
    return visibility(8);
  }

  public T hardwareAccelerated11()
  {
    if (this.b != null)
      this.b.getWindow().setFlags(16777216, 16777216);
    return self();
  }

  public T height(int paramInt)
  {
    size(false, paramInt, true);
    return self();
  }

  public T height(int paramInt, boolean paramBoolean)
  {
    size(false, paramInt, paramBoolean);
    return self();
  }

  public T id(int paramInt)
  {
    return id(findView(paramInt));
  }

  public T id(View paramView)
  {
    this.view = paramView;
    reset();
    return self();
  }

  public T id(String paramString)
  {
    return id(findView(paramString));
  }

  public T id(int[] paramArrayOfInt)
  {
    return id(findView(paramArrayOfInt));
  }

  public T image(int paramInt)
  {
    ImageView localImageView;
    if ((this.view instanceof ImageView))
    {
      localImageView = (ImageView)this.view;
      localImageView.setTag(1090453505, null);
      if (paramInt != 0)
        break label40;
      localImageView.setImageBitmap(null);
    }
    while (true)
    {
      return self();
      label40: localImageView.setImageResource(paramInt);
    }
  }

  public T image(Bitmap paramBitmap)
  {
    if ((this.view instanceof ImageView))
    {
      ImageView localImageView = (ImageView)this.view;
      localImageView.setTag(1090453505, null);
      localImageView.setImageBitmap(paramBitmap);
    }
    return self();
  }

  public T image(Bitmap paramBitmap, float paramFloat)
  {
    BitmapAjaxCallback localBitmapAjaxCallback = new BitmapAjaxCallback();
    localBitmapAjaxCallback.ratio(paramFloat).bitmap(paramBitmap);
    return image(localBitmapAjaxCallback);
  }

  public T image(Drawable paramDrawable)
  {
    if ((this.view instanceof ImageView))
    {
      ImageView localImageView = (ImageView)this.view;
      localImageView.setTag(1090453505, null);
      localImageView.setImageDrawable(paramDrawable);
    }
    return self();
  }

  public T image(BitmapAjaxCallback paramBitmapAjaxCallback)
  {
    if ((this.view instanceof ImageView))
    {
      paramBitmapAjaxCallback.imageView((ImageView)this.view);
      invoke(paramBitmapAjaxCallback);
    }
    return self();
  }

  public T image(File paramFile, int paramInt)
  {
    return image(paramFile, true, paramInt, null);
  }

  public T image(File paramFile, boolean paramBoolean, int paramInt, BitmapAjaxCallback paramBitmapAjaxCallback)
  {
    if (paramBitmapAjaxCallback == null);
    for (BitmapAjaxCallback localBitmapAjaxCallback = new BitmapAjaxCallback(); ; localBitmapAjaxCallback = paramBitmapAjaxCallback)
    {
      localBitmapAjaxCallback.file(paramFile);
      String str = null;
      if (paramFile != null)
        str = paramFile.getAbsolutePath();
      return image(str, paramBoolean, true, paramInt, 0, localBitmapAjaxCallback);
    }
  }

  public T image(String paramString)
  {
    return image(paramString, true, true, 0, 0);
  }

  public T image(String paramString, ImageOptions paramImageOptions)
  {
    return image(paramString, paramImageOptions, null);
  }

  protected T image(String paramString1, ImageOptions paramImageOptions, String paramString2)
  {
    if ((this.view instanceof ImageView))
    {
      BitmapAjaxCallback.async(this.b, getContext(), (ImageView)this.view, paramString1, this.progress, this.ah, paramImageOptions, this.f, paramString2);
      reset();
    }
    return self();
  }

  public T image(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return image(paramString, paramBoolean1, paramBoolean2, 0, 0);
  }

  public T image(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2)
  {
    return image(paramString, paramBoolean1, paramBoolean2, paramInt1, paramInt2, null, 0);
  }

  public T image(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, Bitmap paramBitmap, int paramInt3)
  {
    return image(paramString, paramBoolean1, paramBoolean2, paramInt1, paramInt2, paramBitmap, paramInt3, 0.0F);
  }

  public T image(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, Bitmap paramBitmap, int paramInt3, float paramFloat)
  {
    return image(paramString, paramBoolean1, paramBoolean2, paramInt1, paramInt2, paramBitmap, paramInt3, paramFloat, 0, null);
  }

  protected T image(String paramString1, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, Bitmap paramBitmap, int paramInt3, float paramFloat, int paramInt4, String paramString2)
  {
    if ((this.view instanceof ImageView))
    {
      BitmapAjaxCallback.async(this.b, getContext(), (ImageView)this.view, paramString1, paramBoolean1, paramBoolean2, paramInt1, paramInt2, paramBitmap, paramInt3, paramFloat, 3.4028235E+38F, this.progress, this.ah, this.e.intValue(), paramInt4, this.f, paramString2);
      reset();
    }
    return self();
  }

  public T image(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, BitmapAjaxCallback paramBitmapAjaxCallback)
  {
    ((BitmapAjaxCallback)((BitmapAjaxCallback)paramBitmapAjaxCallback.targetWidth(paramInt1).fallback(paramInt2).url(paramString)).memCache(paramBoolean1)).fileCache(paramBoolean2);
    return image(paramBitmapAjaxCallback);
  }

  public View inflate(View paramView, int paramInt, ViewGroup paramViewGroup)
  {
    if (paramView != null)
    {
      Integer localInteger = (Integer)paramView.getTag(1090453507);
      if ((localInteger != null) && (localInteger.intValue() == paramInt))
        return paramView;
    }
    if (this.b != null);
    for (LayoutInflater localLayoutInflater = this.b.getLayoutInflater(); ; localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater"))
    {
      View localView = localLayoutInflater.inflate(paramInt, paramViewGroup, false);
      localView.setTag(1090453507, Integer.valueOf(paramInt));
      return localView;
    }
  }

  public T invalidate(String paramString)
  {
    File localFile = getCachedFile(paramString);
    if (localFile != null)
      localFile.delete();
    return self();
  }

  public T invisible()
  {
    return visibility(4);
  }

  protected <K> T invoke(AbstractAjaxCallback<?, K> paramAbstractAjaxCallback)
  {
    if (this.ah != null)
      paramAbstractAjaxCallback.auth(this.ah);
    if (this.progress != null)
      paramAbstractAjaxCallback.progress(this.progress);
    if (this.d != null)
      paramAbstractAjaxCallback.transformer(this.d);
    if (this.e != null)
      paramAbstractAjaxCallback.policy(this.e.intValue());
    if (this.f != null)
      paramAbstractAjaxCallback.proxy(this.f.getHostName(), this.f.getPort());
    if (this.b != null)
      paramAbstractAjaxCallback.async(this.b);
    while (true)
    {
      reset();
      return self();
      paramAbstractAjaxCallback.async(getContext());
    }
  }

  public Object invoke(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    Object localObject = this.view;
    if (localObject == null)
      localObject = this.b;
    return AQUtility.invokeHandler(localObject, paramString, false, false, paramArrayOfClass, paramArrayOfObject);
  }

  public boolean isChecked()
  {
    boolean bool1 = this.view instanceof CompoundButton;
    boolean bool2 = false;
    if (bool1)
      bool2 = ((CompoundButton)this.view).isChecked();
    return bool2;
  }

  public boolean isExist()
  {
    return this.view != null;
  }

  public T itemClicked(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    if ((this.view instanceof AdapterView))
      ((AdapterView)this.view).setOnItemClickListener(paramOnItemClickListener);
    return self();
  }

  public T itemClicked(Object paramObject, String paramString)
  {
    return itemClicked(new Common().forward(paramObject, paramString, true, i));
  }

  public T itemSelected(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    if ((this.view instanceof AdapterView))
      ((AdapterView)this.view).setOnItemSelectedListener(paramOnItemSelectedListener);
    return self();
  }

  public T itemSelected(Object paramObject, String paramString)
  {
    return itemSelected(new Common().forward(paramObject, paramString, true, i));
  }

  public T longClick()
  {
    if (this.view != null)
      this.view.performLongClick();
    return self();
  }

  public T longClicked(View.OnLongClickListener paramOnLongClickListener)
  {
    if (this.view != null)
      this.view.setOnLongClickListener(paramOnLongClickListener);
    return self();
  }

  public T longClicked(Object paramObject, String paramString)
  {
    return longClicked(new Common().forward(paramObject, paramString, true, h));
  }

  public File makeSharedFile(String paramString1, String paramString2)
  {
    try
    {
      File localFile2 = getCachedFile(paramString1);
      if (localFile2 != null)
      {
        File localFile3 = AQUtility.getTempDir();
        if (localFile3 != null)
        {
          File localFile4 = new File(localFile3, paramString2);
          Exception localException1;
          try
          {
            localFile4.createNewFile();
            FileInputStream localFileInputStream = new FileInputStream(localFile2);
            FileOutputStream localFileOutputStream = new FileOutputStream(localFile4);
            FileChannel localFileChannel1 = localFileInputStream.getChannel();
            FileChannel localFileChannel2 = localFileOutputStream.getChannel();
            try
            {
              localFileChannel1.transferTo(0L, localFileChannel1.size(), localFileChannel2);
              return localFile4;
            }
            finally
            {
              AQUtility.close(localFileInputStream);
              AQUtility.close(localFileOutputStream);
              AQUtility.close(localFileChannel1);
              AQUtility.close(localFileChannel2);
            }
          }
          catch (Exception localException3)
          {
            localException1 = localException3;
            localFile1 = localFile4;
          }
          AQUtility.debug(localException1);
          return localFile1;
        }
      }
    }
    catch (Exception localException2)
    {
      while (true)
        File localFile1 = null;
    }
    return null;
  }

  public T margin(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (this.view != null)
    {
      ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
      if ((localLayoutParams instanceof ViewGroup.MarginLayoutParams))
      {
        Context localContext = getContext();
        int i1 = AQUtility.dip2pixel(localContext, paramFloat1);
        int i2 = AQUtility.dip2pixel(localContext, paramFloat2);
        int i3 = AQUtility.dip2pixel(localContext, paramFloat3);
        int i4 = AQUtility.dip2pixel(localContext, paramFloat4);
        ((ViewGroup.MarginLayoutParams)localLayoutParams).setMargins(i1, i2, i3, i4);
        this.view.setLayoutParams(localLayoutParams);
      }
    }
    return self();
  }

  public T overridePendingTransition5(int paramInt1, int paramInt2)
  {
    if (this.b != null)
    {
      Activity localActivity = this.b;
      Class[] arrayOfClass = l;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      AQUtility.invokeHandler(localActivity, "overridePendingTransition", false, false, arrayOfClass, arrayOfObject);
    }
    return self();
  }

  public T parent(int paramInt)
  {
    ViewParent localViewParent;
    for (View localView = this.view; ; localView = (View)localViewParent)
    {
      if (localView == null);
      do
      {
        localView = null;
        do
          return create(localView);
        while (localView.getId() == paramInt);
        localViewParent = localView.getParent();
      }
      while (!(localViewParent instanceof View));
    }
  }

  public T policy(int paramInt)
  {
    this.e = Integer.valueOf(paramInt);
    return self();
  }

  public T progress(int paramInt)
  {
    this.progress = findView(paramInt);
    return self();
  }

  public T progress(Dialog paramDialog)
  {
    this.progress = paramDialog;
    return self();
  }

  public T progress(Object paramObject)
  {
    this.progress = paramObject;
    return self();
  }

  public T proxy(String paramString, int paramInt)
  {
    this.f = new HttpHost(paramString, paramInt);
    return self();
  }

  public <K> T put(String paramString1, String paramString2, HttpEntity paramHttpEntity, Class<K> paramClass, AjaxCallback<K> paramAjaxCallback)
  {
    ((AjaxCallback)((AjaxCallback)((AjaxCallback)((AjaxCallback)paramAjaxCallback.url(paramString1)).type(paramClass)).method(3)).header("Content-Type", paramString2)).param("%entity", paramHttpEntity);
    return ajax(paramAjaxCallback);
  }

  public T rating(float paramFloat)
  {
    if ((this.view instanceof RatingBar))
      ((RatingBar)this.view).setRating(paramFloat);
    return self();
  }

  public T recycle(View paramView)
  {
    this.a = paramView;
    this.view = paramView;
    reset();
    this.c = null;
    return self();
  }

  protected void reset()
  {
    this.ah = null;
    this.progress = null;
    this.d = null;
    this.e = Integer.valueOf(0);
    this.f = null;
  }

  public T scrolled(AbsListView.OnScrollListener paramOnScrollListener)
  {
    if ((this.view instanceof AbsListView))
      setScrollListener().forward(paramOnScrollListener);
    return self();
  }

  public T scrolledBottom(Object paramObject, String paramString)
  {
    if ((this.view instanceof AbsListView))
      setScrollListener().forward(paramObject, paramString, true, j);
    return self();
  }

  public T setLayerType11(int paramInt, Paint paramPaint)
  {
    if (this.view != null)
    {
      View localView = this.view;
      Class[] arrayOfClass = n;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = paramPaint;
      AQUtility.invokeHandler(localView, "setLayerType", false, false, arrayOfClass, arrayOfObject);
    }
    return self();
  }

  public T setOverScrollMode9(int paramInt)
  {
    if ((this.view instanceof AbsListView))
    {
      View localView = this.view;
      Class[] arrayOfClass = m;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      AQUtility.invokeHandler(localView, "setOverScrollMode", false, false, arrayOfClass, arrayOfObject);
    }
    return self();
  }

  public T setSelection(int paramInt)
  {
    if ((this.view instanceof AdapterView))
      ((AdapterView)this.view).setSelection(paramInt);
    return self();
  }

  public boolean shouldDelay(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup, String paramString)
  {
    return Common.shouldDelay(paramInt1, paramInt2, paramView, paramViewGroup, paramString);
  }

  public boolean shouldDelay(int paramInt, View paramView, ViewGroup paramViewGroup, String paramString)
  {
    if ((paramViewGroup instanceof ExpandableListView))
      throw new IllegalArgumentException("Please use the other shouldDelay methods for expandable list.");
    return Common.shouldDelay(paramInt, paramView, paramViewGroup, paramString);
  }

  public boolean shouldDelay(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup, String paramString)
  {
    return Common.shouldDelay(paramInt, -1, paramView, paramViewGroup, paramString);
  }

  @Deprecated
  public boolean shouldDelay(View paramView, ViewGroup paramViewGroup, String paramString, float paramFloat)
  {
    return Common.shouldDelay(paramView, paramViewGroup, paramString, paramFloat, true);
  }

  @Deprecated
  public boolean shouldDelay(View paramView, ViewGroup paramViewGroup, String paramString, float paramFloat, boolean paramBoolean)
  {
    return Common.shouldDelay(paramView, paramViewGroup, paramString, paramFloat, paramBoolean);
  }

  public T show(Dialog paramDialog)
  {
    if (paramDialog != null);
    try
    {
      paramDialog.show();
      o.put(paramDialog, null);
      label17: return self();
    }
    catch (Exception localException)
    {
      break label17;
    }
  }

  public <K> T sync(AjaxCallback<K> paramAjaxCallback)
  {
    ajax(paramAjaxCallback);
    paramAjaxCallback.block();
    return self();
  }

  public T tag(int paramInt, Object paramObject)
  {
    if (this.view != null)
      this.view.setTag(paramInt, paramObject);
    return self();
  }

  public T tag(Object paramObject)
  {
    if (this.view != null)
      this.view.setTag(paramObject);
    return self();
  }

  public T text(int paramInt)
  {
    if ((this.view instanceof TextView))
      ((TextView)this.view).setText(paramInt);
    return self();
  }

  public T text(int paramInt, Object[] paramArrayOfObject)
  {
    Context localContext = getContext();
    if (localContext != null)
      text(localContext.getString(paramInt, paramArrayOfObject));
    return self();
  }

  public T text(Spanned paramSpanned)
  {
    if ((this.view instanceof TextView))
      ((TextView)this.view).setText(paramSpanned);
    return self();
  }

  public T text(CharSequence paramCharSequence)
  {
    if ((this.view instanceof TextView))
      ((TextView)this.view).setText(paramCharSequence);
    return self();
  }

  public T text(CharSequence paramCharSequence, boolean paramBoolean)
  {
    if ((paramBoolean) && ((paramCharSequence == null) || (paramCharSequence.length() == 0)))
      return gone();
    return text(paramCharSequence);
  }

  public T textChanged(Object paramObject, String paramString)
  {
    if ((this.view instanceof TextView))
      ((TextView)this.view).addTextChangedListener(new Common().forward(paramObject, paramString, true, k));
    return self();
  }

  public T textColor(int paramInt)
  {
    if ((this.view instanceof TextView))
      ((TextView)this.view).setTextColor(paramInt);
    return self();
  }

  public T textSize(float paramFloat)
  {
    if ((this.view instanceof TextView))
      ((TextView)this.view).setTextSize(paramFloat);
    return self();
  }

  public T transformer(Transformer paramTransformer)
  {
    this.d = paramTransformer;
    return self();
  }

  public T transparent(boolean paramBoolean)
  {
    if (this.view != null)
      AQUtility.transparent(this.view, paramBoolean);
    return self();
  }

  public T typeface(Typeface paramTypeface)
  {
    if ((this.view instanceof TextView))
      ((TextView)this.view).setTypeface(paramTypeface);
    return self();
  }

  public T visibility(int paramInt)
  {
    if ((this.view != null) && (this.view.getVisibility() != paramInt))
      this.view.setVisibility(paramInt);
    return self();
  }

  public T visible()
  {
    return visibility(0);
  }

  public T webImage(String paramString)
  {
    return webImage(paramString, true, false, -16777216);
  }

  public T webImage(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    if ((this.view instanceof WebView))
    {
      setLayerType11(1, null);
      new WebImage((WebView)this.view, paramString, this.progress, paramBoolean1, paramBoolean2, paramInt).load();
      this.progress = null;
    }
    return self();
  }

  public T width(int paramInt)
  {
    size(true, paramInt, true);
    return self();
  }

  public T width(int paramInt, boolean paramBoolean)
  {
    size(true, paramInt, paramBoolean);
    return self();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.AbstractAQuery
 * JD-Core Version:    0.6.2
 */