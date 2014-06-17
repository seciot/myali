.class final Lcom/alipay/mobile/security/accountmanager/ui/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field final synthetic d:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Landroid/app/Activity;Ljava/lang/Boolean;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bm;->d:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/bm;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/security/accountmanager/ui/bm;->b:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/alipay/mobile/security/accountmanager/ui/bm;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bm;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cE:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cF:I

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/bn;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bn;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/bm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->aJ:I

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/bo;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bo;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/bm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bp;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bp;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/bm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=frozenDialog],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
