package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.GridView;
import android.widget.LinearLayout;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import java.util.ArrayList;

public class APShareSelectDialog$ShareSelectView extends LinearLayout
{
  private ArrayList a;
  private APShareSelectDialog.OnShareSelectListener b;
  Context mContext;
  GridView mGridView;

  public APShareSelectDialog$ShareSelectView(Context paramContext, int paramInt)
  {
    super(paramContext, null);
    this.mContext = paramContext;
    LayoutInflater.from(paramContext).inflate(R.layout.layout_share_select, this, true);
    this.mGridView = ((GridView)findViewById(R.id.grid_view));
    this.mGridView.setOnItemClickListener(new APShareSelectDialog.ShareSelectView.1(this));
    init(paramInt);
  }

  public void init(int paramInt)
  {
    this.a = new ArrayList();
    if ((paramInt & 0x10) != 0)
      this.a.add(Integer.valueOf(16));
    if ((paramInt & 0x100000) != 0)
      this.a.add(Integer.valueOf(1048576));
    if ((paramInt & 0x1000000) != 0)
      this.a.add(Integer.valueOf(16777216));
    if ((paramInt & 0x100) != 0)
      this.a.add(Integer.valueOf(256));
    if ((paramInt & 0x1000) != 0)
      this.a.add(Integer.valueOf(4096));
    if ((paramInt & 0x1) != 0)
      this.a.add(Integer.valueOf(1));
    if ((paramInt & 0x10000) != 0)
      this.a.add(Integer.valueOf(65536));
    this.mGridView.setAdapter(new APShareSelectDialog.ShareSelectView.2(this));
  }

  public void setOnShareSelectListener(APShareSelectDialog.OnShareSelectListener paramOnShareSelectListener)
  {
    this.b = paramOnShareSelectListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APShareSelectDialog.ShareSelectView
 * JD-Core Version:    0.6.2
 */