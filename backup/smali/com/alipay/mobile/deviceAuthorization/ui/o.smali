.class final Lcom/alipay/mobile/deviceAuthorization/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/o;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/o;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(Ljava/lang/String;)V

    return-void
.end method
