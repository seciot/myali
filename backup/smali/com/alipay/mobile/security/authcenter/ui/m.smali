.class final Lcom/alipay/mobile/security/authcenter/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/l;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/m;->a:Lcom/alipay/mobile/security/authcenter/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
