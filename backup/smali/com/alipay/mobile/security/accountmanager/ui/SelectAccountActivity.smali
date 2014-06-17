.class public Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_selectaccount"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_selectAccount_userListView"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected d:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/security/accountmanager/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "source_selectAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "allowBack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000008"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/b/b;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->e:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/security/accountmanager/b/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->f:Lcom/alipay/mobile/security/accountmanager/b/b;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->f:Lcom/alipay/mobile/security/accountmanager/b/b;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/accountmanager/b/b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$layout;->aY:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cK:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->cs:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/mobile/security/accountmanager/ui/dj;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/accountmanager/ui/dj;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v5, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->f:Lcom/alipay/mobile/security/accountmanager/b/b;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/dk;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/dk;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;->a()Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "processOld"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/alipay/mobile/security/accountmanager/ui/dm;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/dm;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v0

    if-ne v1, v0, :cond_0

    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->dismissProgressDialog()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->dismissProgressDialog()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    const-string/jumbo v1, "set"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture()Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/dl;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/dl;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u63a5\u6536\u9875\u9762\u8fd4\u56de\u4e8b\u4ef6\u3002requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "source_login"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, "set"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/SelectAccountActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
