.class public final Lcom/alipay/mobile/alipassapp/ui/common/aj;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->title_travel_detail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->travel_remind_set_titleBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/ak;

    invoke-direct {v0, p3, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/ak;-><init>(Landroid/os/Bundle;Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->travel_remind_set_titleBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherPastListActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_my_voucher_past_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelPastListActivity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_my_travel_past:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/TravelCurrentListActivity;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_my_travel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_my_travel_past:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/al;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/al;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_my_voucher:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_my_voucher_past:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/am;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/alipassapp/ui/common/am;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
