package com.alipay.mobile.common.misc;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.styleable;
import java.util.Calendar;

public class YearMonthPicker extends RelativeLayout
{
  protected final int REP_DELAY = 100;
  private boolean a = true;
  private boolean b = false;
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private int f;
  protected int maxYear;
  protected int minYear;
  protected Button monthDownBtn;
  protected TextView monthEditText;
  protected Button monthUpBtn;
  protected Handler rptUpdateHandler = new Handler();
  protected Button yearDownBtn;
  protected TextView yearEditText;
  protected Button yearUpBtn;

  public YearMonthPicker(Context paramContext)
  {
    super(paramContext);
  }

  public YearMonthPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ext_year_month_picker, this, true);
    paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.yearMonthPicker).recycle();
  }

  private static String a(int paramInt)
  {
    String str = String.valueOf(paramInt);
    if (paramInt > 9)
      return str;
    return "0" + str;
  }

  public void decrement(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      decrementYear();
      return;
    }
    decrementMonth();
  }

  protected void decrementMonth()
  {
    int i = -1 + Integer.valueOf(this.monthEditText.getText().toString()).intValue();
    if (i <= 0)
      i = 12;
    this.monthEditText.setText(a(i));
  }

  protected void decrementYear()
  {
    int i = -1 + Integer.valueOf(this.yearEditText.getText().toString()).intValue();
    if (i < this.minYear)
      i = this.maxYear;
    this.yearEditText.setText(String.valueOf(i));
  }

  public void disableBeforeYear()
  {
    this.a = false;
    if (this.minYear < this.f);
    for (int i = this.f; ; i = this.minYear)
    {
      this.minYear = i;
      return;
    }
  }

  public void enableBeforeYear()
  {
    this.a = true;
  }

  public int getMonth()
  {
    return Integer.valueOf(this.monthEditText.getText().toString()).intValue();
  }

  public String getMonthStr(boolean paramBoolean)
  {
    String str = this.monthEditText.getText().toString();
    if (!paramBoolean)
      str = String.valueOf(Integer.valueOf(str).intValue());
    return str;
  }

  public int getYear()
  {
    return Integer.valueOf(this.yearEditText.getText().toString()).intValue();
  }

  protected void increment(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      incrementYear();
      return;
    }
    incrementMonth();
  }

  protected void incrementMonth()
  {
    int i = 1 + Integer.valueOf(this.monthEditText.getText().toString()).intValue();
    if (i > 12)
      i = 1;
    this.monthEditText.setText(a(i));
  }

  protected void incrementYear()
  {
    int i = 1 + Integer.valueOf(this.yearEditText.getText().toString()).intValue();
    if (i > this.maxYear)
      i = this.minYear;
    this.yearEditText.setText(String.valueOf(i));
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.yearUpBtn = ((Button)findViewById(R.id.year_up_btn));
    this.yearDownBtn = ((Button)findViewById(R.id.year_down_btn));
    this.yearEditText = ((TextView)findViewById(R.id.year_text));
    this.monthUpBtn = ((Button)findViewById(R.id.month_up_btn));
    this.monthDownBtn = ((Button)findViewById(R.id.month_down_btn));
    this.monthEditText = ((TextView)findViewById(R.id.month_text));
    setButtonAction(this.yearUpBtn, true, true);
    setButtonAction(this.yearDownBtn, true, false);
    setButtonAction(this.monthUpBtn, false, true);
    setButtonAction(this.monthDownBtn, false, false);
    setDefaultYearLimit();
  }

  protected void setButtonAction(Button paramButton, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramButton.setOnClickListener(new YearMonthPicker.1(this, paramBoolean2, paramBoolean1));
    paramButton.setOnLongClickListener(new YearMonthPicker.2(this, paramBoolean1, paramBoolean2));
    paramButton.setOnTouchListener(new YearMonthPicker.3(this));
  }

  public void setCurrentDate()
  {
    Calendar localCalendar = Calendar.getInstance();
    setYearMonth(localCalendar.get(1), 1 + localCalendar.get(2));
  }

  protected void setDefaultYearLimit()
  {
    this.f = Calendar.getInstance().get(1);
    int i = 100 * (this.f / 100);
    this.minYear = Math.max(0, i - 100);
    this.maxYear = (i + 100);
  }

  public void setMaxYear(int paramInt)
  {
    this.maxYear = paramInt;
  }

  public void setMinYear(int paramInt)
  {
    if (!this.a)
    {
      this.minYear = Math.max(this.f, paramInt);
      return;
    }
    this.minYear = paramInt;
  }

  public void setYearMonth(int paramInt1, int paramInt2)
  {
    int i = Math.min(this.maxYear, Math.max(paramInt1, this.minYear));
    this.yearEditText.setText(String.valueOf(i));
    this.monthEditText.setText(a(paramInt2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.YearMonthPicker
 * JD-Core Version:    0.6.2
 */