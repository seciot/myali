.class final Lcom/alipay/mobile/deviceAuthorization/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/d;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/d;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    iget-object v1, v1, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
