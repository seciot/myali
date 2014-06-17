.class final Lcom/alipay/mobile/discoverywidget/ui/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/discoverywidget/ui/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/discoverywidget/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/discoverywidget/ui/a/b;->a:Lcom/alipay/mobile/discoverywidget/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
