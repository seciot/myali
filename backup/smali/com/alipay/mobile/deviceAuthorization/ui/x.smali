.class final Lcom/alipay/mobile/deviceAuthorization/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/x;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/x;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    iget-object v0, v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/x;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Ljava/lang/String;)V

    return-void
.end method
