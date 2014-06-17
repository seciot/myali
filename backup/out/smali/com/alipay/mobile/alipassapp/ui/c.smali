.class final Lcom/alipay/mobile/alipassapp/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000030"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "couponDetails"

    const-string/jumbo v8, "operate"

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->h(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TRAVEL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000021"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "travelItineraryDetails"

    const-string/jumbo v8, "operate"

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;Lcom/alipay/mobile/commonui/widget/APPopupWindow;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->alipass_detail_more_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;Lcom/alipay/mobile/commonui/widget/APPopupWindow;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->update()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_detail_set:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getRemindSupport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_detail_refresh:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_detail_del:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/c;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->h(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_divide_set:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
