.class public Lcom/alipay/asset/common/view/WealthAccountInfoView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-void
.end method


# virtual methods
.method public bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 0

    return-void
.end method

.method public bindWidgetMsgFlag()V
    .locals 0

    return-void
.end method

.method public cleanWidgetFlag()V
    .locals 0

    return-void
.end method

.method public getBindedWidgetFlagView()Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->updateUI()V

    return-object p0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hideNickNameSign()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "20000070"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000005"

    const-string/jumbo v3, "accountInfoIndex"

    const-string/jumbo v4, "wealthHome"

    const-string/jumbo v5, "accountInfo"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->onFinishInflate()V

    return-void
.end method

.method public setDisplayInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setViewFlag(I)V
    .locals 0

    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->d:Ljava/lang/String;

    return-void
.end method

.method public showNickNameSign()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public updateUI()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8d22\u5bcc\u9996\u9875\u5934\u50cf-\u767b\u5f55id\u548c\u5934\u50cf\u6ca1\u6709\u53d8\u5316\uff1alogonId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",headImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8d22\u5bcc\u9996\u9875\u5934\u50cf-\u8bbe\u7f6e\uff0c\u8bbe\u7f6e\u5934\u50cf\uff0clogonId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",headImg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v3, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v2}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthAccountInfoView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
