package com.alipay.mobile.about.ui;

import android.os.Bundle;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import com.alipay.mobile.about.b.b;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

public abstract class AbsAlbumListActivity<T extends ListAdapter> extends BaseActivity
{
  protected APListView a;
  protected b b;
  protected List<com.alipay.mobile.about.ui.IOUtil.a> c = new ArrayList();
  protected AdapterView.OnItemClickListener d = new m(this);

  protected abstract void a();

  protected abstract void a(int paramInt);

  protected abstract T b();

  protected abstract int c();

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(c());
    a();
    this.b = new b(this);
    this.a = ((APListView)findViewById(R.id.co));
    this.a.setAdapter(b());
    this.a.setOnItemClickListener(this.d);
    com.alipay.mobile.about.b.a.v(this, this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.AbsAlbumListActivity
 * JD-Core Version:    0.6.2
 */