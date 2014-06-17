.class final Lcom/alipay/mobile/alipassapp/ui/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    const-string/jumbo v1, "operate"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/commonui/widget/APPopupWindow;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->member_detail_more_dialog:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-direct {v2, v1, v3, v3}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/commonui/widget/APPopupWindow;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->update()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_detail_share:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "expired"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_member_detail_divide:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_more_dialog:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setGravity(I)V

    :cond_2
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_detail_del:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->n(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dx;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto/16 :goto_0
.end method
