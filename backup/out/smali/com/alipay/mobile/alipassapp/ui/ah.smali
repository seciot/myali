.class final Lcom/alipay/mobile/alipassapp/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->cms_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/commonui/widget/APLinearLayout;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->cms_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->m(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->n(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getTopActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->o(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getTopActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v3, 0x4208

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x41d0

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    sub-float v2, v4, v2

    float-to-int v2, v2

    if-ge v2, v3, :cond_2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getForwardOpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "1"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getForwardOpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/ai;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/alipassapp/ui/ai;-><init>(Lcom/alipay/mobile/alipassapp/ui/ah;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "2"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getForwardOpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/aj;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/aj;-><init>(Lcom/alipay/mobile/alipassapp/ui/ah;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "3"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getForwardOpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ak;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/ak;-><init>(Lcom/alipay/mobile/alipassapp/ui/ah;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
