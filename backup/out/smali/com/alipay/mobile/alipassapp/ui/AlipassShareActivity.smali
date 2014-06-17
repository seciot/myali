.class public Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/alipay/mobile/alipassapp/biz/a;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v0, "com.sina.weibo"

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_share_fail:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v5, -0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "\u52a0\u8f7d\u4e2d"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a:Lcom/alipay/mobile/alipassapp/biz/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->success:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->finish()V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->getShareContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->getShareImgDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;->getShareImgUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v4, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/da;

    invoke-direct {v4, p0, p1, v2, v6}, Lcom/alipay/mobile/alipassapp/ui/da;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v2, v6, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->finish()V

    return-void

    :cond_3
    const-string/jumbo v1, "sinaWeibo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_4

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz p4, :cond_1

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a()V

    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string/jumbo v0, "sms"

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string/jumbo v0, "sinaWeibo"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sina.mfweibo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const-string/jumbo v0, "com.sina.mfweibo"

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->f:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->d:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->d:[Ljava/lang/String;

    const-string/jumbo v1, "\u77ed\u4fe1"

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->d:[Ljava/lang/String;

    const-string/jumbo v1, "\u65b0\u6d6a\u5fae\u535a"

    aput-object v1, v0, v4

    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u5206\u4eab\u7ed9\u597d\u53cb"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->d:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->d:[Ljava/lang/String;

    const-string/jumbo v1, "\u77ed\u4fe1"

    aput-object v1, v0, v3

    goto :goto_1
.end method
