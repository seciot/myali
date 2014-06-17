.class final Lcom/alipay/mobile/security/authcenter/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/l;->c:Lcom/alipay/mobile/security/authcenter/ui/CompleteUserInfoActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/l;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/l;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/m;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/authcenter/ui/m;-><init>(Lcom/alipay/mobile/security/authcenter/ui/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
