.class final Lcom/alipay/mobile/withdraw/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/e;->c:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    iput-object p2, p0, Lcom/alipay/mobile/withdraw/ui/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/withdraw/ui/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/e;->c:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
