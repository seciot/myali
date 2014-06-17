.class final Lcom/alipay/mobile/alipassapp/ui/ep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ep;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ep;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    const-string/jumbo v1, "\u52a0\u8f7d\u4e2d"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/ep;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ep;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ep;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ep;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ep;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->dismissProgressDialog()V

    return-void
.end method
