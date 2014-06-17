.class public Lcom/alipay/mobile/framework/app/ui/DialogHelper;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String; = "DialogHelper"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 10

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    iget-object v9, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    iget-object v6, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showProgressDialog(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
