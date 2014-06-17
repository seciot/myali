.class public Lcom/alipay/mobile/about/ui/AboutMainActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

.field private e:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private f:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private g:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

.field private h:Lcom/alipay/mobile/about/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/AboutMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/AboutMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/about/ui/AboutMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/about/ui/AboutMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->h:Lcom/alipay/mobile/about/a/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/a/a;->a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->a(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v2, 0xc9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->g:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->hideMsgFlag()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->g:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlagNew()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->g:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->hideMsgFlag()V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    const-string/jumbo v1, "\u5df2\u662f\u6700\u65b0\u7248"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/about/service/a;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/about/service/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/service/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/about/ui/AboutTheVersionActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->U:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APExtTableView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->g:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->g:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->attachNewFlag2LeftText(Landroid/view/View;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPackageName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "RC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v2, "."

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->m:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string/jumbo v2, "yyyy"

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x7de

    if-ge v2, v3, :cond_2

    const-string/jumbo v0, "2014"

    :cond_2
    const-string/jumbo v2, "#endYear"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/about/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/g;-><init>(Lcom/alipay/mobile/about/ui/AboutMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->d:Lcom/alipay/mobile/commonui/widget/APExtTableView;

    new-instance v1, Lcom/alipay/mobile/about/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/h;-><init>(Lcom/alipay/mobile/about/ui/AboutMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->e:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/about/ui/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/i;-><init>(Lcom/alipay/mobile/about/ui/AboutMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->f:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/about/ui/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/j;-><init>(Lcom/alipay/mobile/about/ui/AboutMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/about/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/about/a/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->h:Lcom/alipay/mobile/about/a/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AboutMainActivity;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AboutMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moreHome"

    const-string/jumbo v4, "aboutIndex"

    const-string/jumbo v5, "backIcon"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
