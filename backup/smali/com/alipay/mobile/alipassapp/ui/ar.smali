.class final Lcom/alipay/mobile/alipassapp/ui/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/aq;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ar;->a:Lcom/alipay/mobile/alipassapp/ui/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ar;->a:Lcom/alipay/mobile/alipassapp/ui/aq;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/aq;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ar;->a:Lcom/alipay/mobile/alipassapp/ui/aq;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/aq;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ar;->a:Lcom/alipay/mobile/alipassapp/ui/aq;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/aq;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ar;->a:Lcom/alipay/mobile/alipassapp/ui/aq;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/aq;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;)V

    return-void
.end method
