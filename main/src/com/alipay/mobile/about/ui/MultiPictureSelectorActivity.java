package com.alipay.mobile.about.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import com.alipay.mobile.about.ui.b.c;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class MultiPictureSelectorActivity extends BaseFragmentActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener
{
  private static final String[] A = { "_id", "_data" };
  private static final String[] z = new String[0];
  private boolean B = false;
  private boolean C;
  BroadcastReceiver a = null;
  boolean b = false;
  boolean c = false;
  private Context d;
  private Handler e;
  private GridView f;
  private APLinearLayout g;
  private a h;
  private List<com.alipay.mobile.about.ui.b.b> i = new ArrayList();
  private APTextView j;
  private HorizontalScrollView k;
  private List<String> l = new ArrayList();
  private int m = 5;
  private int n = 0;
  private long o = 0L;
  private String p = "";
  private Intent q;
  private Intent r;
  private Button s;
  private int t = 0;
  private int u = 0;
  private int v = 0;
  private com.alipay.mobile.about.b.b w;
  private Bitmap x;
  private ProgressDialog y;

  private void a(Intent paramIntent)
  {
    this.mMicroApplicationContext.startActivity(this.mApp, paramIntent);
  }

  private void a(View paramView)
  {
    try
    {
      RelativeLayout localRelativeLayout = (RelativeLayout)paramView;
      View localView = ((RelativeLayout)localRelativeLayout.getChildAt(0)).getChildAt(5);
      ImageView localImageView = (ImageView)localRelativeLayout.getChildAt(1);
      if (localImageView.getVisibility() == 0)
      {
        localImageView.setVisibility(8);
        localView.setVisibility(8);
        return;
      }
      localImageView.setVisibility(0);
      localView.setVisibility(0);
      return;
    }
    catch (Exception localException)
    {
      this.h.notifyDataSetChanged();
    }
  }

  private void a(ViewGroup paramViewGroup)
  {
    int i1 = 0;
    if (i1 < paramViewGroup.getChildCount())
    {
      View localView = paramViewGroup.getChildAt(i1);
      if (ViewGroup.class.isInstance(localView))
        a((ViewGroup)localView);
      while (true)
      {
        i1++;
        break;
        if (RecycleabledImageView.class.isInstance(localView))
        {
          RecycleabledImageView localRecycleabledImageView = (RecycleabledImageView)localView;
          if ((localRecycleabledImageView.getDrawable() != null) && (BitmapDrawable.class.isInstance(localRecycleabledImageView.getDrawable())))
          {
            Bitmap localBitmap = ((BitmapDrawable)localRecycleabledImageView.getDrawable()).getBitmap();
            if ((localBitmap != null) && (!localBitmap.isRecycled()))
              localBitmap.recycle();
          }
        }
      }
    }
  }

  public static void a(ActivityApplication paramActivityApplication, Activity paramActivity, long paramLong, String paramString, Intent paramIntent1, Intent paramIntent2, int paramInt)
  {
    Intent localIntent = new Intent(paramActivity, MultiPictureSelectorActivity.class);
    localIntent.putExtra("BUCKET_ID", paramLong);
    localIntent.putExtra("folderName", paramString);
    localIntent.putExtra("from", paramIntent1);
    localIntent.putExtra("filter", paramIntent2);
    localIntent.putExtra("current_count", paramInt);
    paramActivityApplication.getMicroApplicationContext().startActivity(paramActivityApplication, localIntent);
  }

  private void a(boolean paramBoolean)
  {
    this.s.setEnabled(paramBoolean);
  }

  public final View a(int paramInt)
  {
    View localView = View.inflate(this.d, R.layout.ab, null);
    b localb = new b();
    localb.a = ((RecycleabledImageView)localView.findViewById(R.id.bw));
    localView.setTag(localb);
    com.alipay.mobile.about.ui.b.b localb1 = (com.alipay.mobile.about.ui.b.b)this.i.get(paramInt);
    this.w.a(localb.a, localb1.a(), this.x);
    return localView;
  }

  public void onBackPressed()
  {
    Intent localIntent = new Intent(this, MultiPictureSelectorMenu.class);
    localIntent.putExtra("from", this.q);
    localIntent.putExtra("filter", this.r);
    localIntent.putExtra("current_count", this.t);
    a(localIntent);
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    a(false);
    int i1 = this.l.size();
    if (i1 > 0)
    {
      String[] arrayOfString = new String[i1];
      for (int i2 = 0; i2 < i1; i2++)
        arrayOfString[i2] = ((String)this.l.get(i2));
      if (this.q != null)
      {
        this.q.putExtra("bitmapUrls", arrayOfString);
        a(this.q);
      }
    }
    while (true)
    {
      finish();
      return;
      if (i1 == 1)
      {
        String str = (String)this.l.get(0);
        if (this.r != null)
        {
          this.r.putExtra("bitmapUrl", Uri.fromFile(new File(str)));
          this.r.putExtra("from", this.q);
          a(this.r);
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aa);
    this.w = new com.alipay.mobile.about.b.b(this);
    this.x = BitmapFactory.decodeResource(getResources(), R.drawable.g);
    Intent localIntent = getIntent();
    this.o = localIntent.getLongExtra("BUCKET_ID", 0L);
    this.p = localIntent.getStringExtra("folderName");
    this.q = ((Intent)localIntent.getParcelableExtra("from"));
    this.r = ((Intent)localIntent.getParcelableExtra("filter"));
    if (this.r != null)
      this.B = this.r.getBooleanExtra("isFromBurning", false);
    this.t = localIntent.getIntExtra("current_count", 0);
    this.e = new Handler();
    this.f = ((GridView)findViewById(R.id.u));
    this.f.setOnItemClickListener(this);
    this.f.setOnItemLongClickListener(this);
    this.f.setOnScrollListener(new ah(this));
    this.g = ((APLinearLayout)findViewById(R.id.fx));
    this.d = this;
    this.j = ((APTextView)findViewById(R.id.cs));
    APTextView localAPTextView = this.j;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.n);
    arrayOfObject[1] = Integer.valueOf(this.m - this.t);
    localAPTextView.setText(String.format("已选择%d张，还可以选择%d张", arrayOfObject));
    this.k = ((HorizontalScrollView)findViewById(R.id.fy));
    APTitleBar localAPTitleBar = (APTitleBar)findViewById(R.id.bp);
    localAPTitleBar.setTitleText(this.p);
    localAPTitleBar.setOnClickListener(new ak(this));
    this.s = localAPTitleBar.getGenericButton();
    this.s.setVisibility(0);
    this.s.setOnClickListener(this);
    this.s.setText("确定");
    a(false);
    this.h = new a();
    this.f.setAdapter(this.h);
    this.y = ProgressDialog.show(this, null, "正在加载...", true, true);
    BackgroundExecutor.execute(new ai(this));
  }

  protected void onDestroy()
  {
    if ((this.x != null) && (!this.x.isRecycled()))
    {
      this.x.recycle();
      this.x = null;
    }
    a(this.g);
    this.w.b();
    super.onDestroy();
    this.C = true;
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    com.alipay.mobile.about.ui.b.b localb = (com.alipay.mobile.about.ui.b.b)this.i.get(paramInt);
    if (localb.b())
    {
      a(paramView);
      localb.a(false);
      View localView2 = localb.c();
      this.g.removeView(localView2);
      localb.a(null);
      this.l.remove(localb.a());
      this.n = (-1 + this.n);
      APTextView localAPTextView = this.j;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(this.n);
      arrayOfObject[1] = Integer.valueOf(this.m - this.n - this.t);
      localAPTextView.setText(String.format("已选择%d张，还可以选择%d张", arrayOfObject));
      this.e.postDelayed(new am(this), 30L);
      if (this.n <= 0)
        break label306;
    }
    label306: for (boolean bool = true; ; bool = false)
    {
      a(bool);
      return;
      if (this.n >= this.m - this.t)
      {
        Toast.makeText(this.d, R.string.Y, 0).show();
        return;
      }
      a(paramView);
      localb.a(true);
      this.l.add(localb.a());
      View localView1 = a(paramInt);
      localView1.setTag(new c(paramInt, paramView));
      localb.a(localView1);
      this.g.addView(localView1);
      localView1.setOnClickListener(new al(this));
      this.n = (1 + this.n);
      if (!this.B)
        break;
      onClick(null);
      break;
    }
  }

  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.i.get(paramInt);
    return false;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }

  final class a extends BaseAdapter
    implements View.OnClickListener
  {
    final int a = 0;
    int b = 0;

    a()
    {
    }

    public final int getCount()
    {
      return MultiPictureSelectorActivity.c(MultiPictureSelectorActivity.this).size();
    }

    public final Object getItem(int paramInt)
    {
      if (MultiPictureSelectorActivity.c(MultiPictureSelectorActivity.this).isEmpty())
        return Integer.valueOf(paramInt);
      return MultiPictureSelectorActivity.c(MultiPictureSelectorActivity.this).get(paramInt);
    }

    public final long getItemId(int paramInt)
    {
      return paramInt;
    }

    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      MultiPictureSelectorActivity.b localb2;
      int i;
      if (paramView == null)
      {
        paramView = View.inflate(MultiPictureSelectorActivity.g(MultiPictureSelectorActivity.this), R.layout.ac, null);
        localb2 = new MultiPictureSelectorActivity.b(MultiPictureSelectorActivity.this);
        localb2.a = ((RecycleabledImageView)paramView.findViewById(R.id.bw));
        localb2.d = ((ImageView)paramView.findViewById(R.id.bu));
        localb2.c = ((ImageView)paramView.findViewById(R.id.bA));
        localb2.f = paramView.findViewById(R.id.by);
        localb2.e = paramView.findViewById(R.id.bx);
        RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)localb2.d.getLayoutParams();
        RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)localb2.a.getLayoutParams();
        RelativeLayout.LayoutParams localLayoutParams3 = (RelativeLayout.LayoutParams)localb2.f.getLayoutParams();
        RelativeLayout.LayoutParams localLayoutParams4 = (RelativeLayout.LayoutParams)localb2.e.getLayoutParams();
        if (Build.VERSION.SDK_INT < 11)
        {
          i = (-7 + DeviceInfo.createInstance(MultiPictureSelectorActivity.g(MultiPictureSelectorActivity.this)).getScreenWidth()) / 3;
          localLayoutParams2.height = i;
          localLayoutParams1.height = i;
          localLayoutParams2.width = i;
          localLayoutParams1.width = i;
          int j = -2 + localLayoutParams1.height;
          localLayoutParams4.height = j;
          localLayoutParams3.height = j;
          localb2.b = ((ViewGroup)paramView.findViewById(R.id.bk));
          paramView.setTag(localb2);
        }
      }
      for (MultiPictureSelectorActivity.b localb1 = localb2; ; localb1 = (MultiPictureSelectorActivity.b)paramView.getTag())
      {
        com.alipay.mobile.about.ui.b.b localb = (com.alipay.mobile.about.ui.b.b)MultiPictureSelectorActivity.c(MultiPictureSelectorActivity.this).get(paramInt);
        MultiPictureSelectorActivity.i(MultiPictureSelectorActivity.this).a(localb1.a, localb.a(), MultiPictureSelectorActivity.h(MultiPictureSelectorActivity.this));
        if (!localb.b())
          break label417;
        localb1.d.setVisibility(0);
        localb1.c.setVisibility(0);
        return paramView;
        if (Build.VERSION.SDK_INT < 16)
        {
          i = (DeviceInfo.createInstance(MultiPictureSelectorActivity.g(MultiPictureSelectorActivity.this)).getScreenWidth() - MultiPictureSelectorActivity.f(MultiPictureSelectorActivity.this).getPaddingLeft() - MultiPictureSelectorActivity.f(MultiPictureSelectorActivity.this).getPaddingRight()) / MultiPictureSelectorActivity.f(MultiPictureSelectorActivity.this).getNumColumns();
          break;
        }
        i = MultiPictureSelectorActivity.f(MultiPictureSelectorActivity.this).getColumnWidth();
        break;
      }
      label417: localb1.d.setVisibility(8);
      localb1.c.setVisibility(8);
      return paramView;
    }

    public final void onClick(View paramView)
    {
      int i = ((Integer)paramView.getTag()).intValue();
      com.alipay.mobile.about.ui.b.b localb = (com.alipay.mobile.about.ui.b.b)MultiPictureSelectorActivity.c(MultiPictureSelectorActivity.this).get(i);
      MultiPictureSelectorActivity localMultiPictureSelectorActivity;
      if (localb.b())
      {
        localb.a(false);
        View localView2 = localb.c();
        MultiPictureSelectorActivity.j(MultiPictureSelectorActivity.this).removeView(localView2);
        localb.a(null);
        MultiPictureSelectorActivity.k(MultiPictureSelectorActivity.this).remove(localb.a());
        MultiPictureSelectorActivity.l(MultiPictureSelectorActivity.this);
        APTextView localAPTextView = MultiPictureSelectorActivity.r(MultiPictureSelectorActivity.this);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(MultiPictureSelectorActivity.m(MultiPictureSelectorActivity.this));
        arrayOfObject[1] = Integer.valueOf(MultiPictureSelectorActivity.n(MultiPictureSelectorActivity.this) - MultiPictureSelectorActivity.m(MultiPictureSelectorActivity.this) - MultiPictureSelectorActivity.o(MultiPictureSelectorActivity.this));
        localAPTextView.setText(String.format("已选择%d张，还可以选择%d张", arrayOfObject));
        MultiPictureSelectorActivity.e(MultiPictureSelectorActivity.this).postDelayed(new ao(this), 30L);
        localMultiPictureSelectorActivity = MultiPictureSelectorActivity.this;
        if (MultiPictureSelectorActivity.m(MultiPictureSelectorActivity.this) <= 0)
          break label360;
      }
      label360: for (boolean bool = true; ; bool = false)
      {
        MultiPictureSelectorActivity.a(localMultiPictureSelectorActivity, bool);
        return;
        if (MultiPictureSelectorActivity.m(MultiPictureSelectorActivity.this) >= MultiPictureSelectorActivity.n(MultiPictureSelectorActivity.this) - MultiPictureSelectorActivity.o(MultiPictureSelectorActivity.this))
        {
          MultiPictureSelectorActivity.this.toast(MultiPictureSelectorActivity.this.getResources().getString(R.string.Y), 0);
          return;
        }
        localb.a(true);
        MultiPictureSelectorActivity.k(MultiPictureSelectorActivity.this).add(localb.a());
        View localView1 = MultiPictureSelectorActivity.this.a(i);
        localView1.setTag(new c(i, paramView));
        localb.a(localView1);
        MultiPictureSelectorActivity.j(MultiPictureSelectorActivity.this).addView(localView1);
        localView1.setOnClickListener(new an(this));
        MultiPictureSelectorActivity.s(MultiPictureSelectorActivity.this);
        if (!MultiPictureSelectorActivity.t(MultiPictureSelectorActivity.this))
          break;
        MultiPictureSelectorActivity.u(MultiPictureSelectorActivity.this);
        break;
      }
    }
  }

  final class b
  {
    RecycleabledImageView a;
    ViewGroup b;
    ImageView c;
    ImageView d;
    View e;
    View f;

    b()
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.MultiPictureSelectorActivity
 * JD-Core Version:    0.6.2
 */