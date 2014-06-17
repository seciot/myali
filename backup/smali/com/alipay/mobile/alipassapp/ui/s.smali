.class final Lcom/alipay/mobile/alipassapp/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ShareService;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;Lcom/alipay/mobile/framework/service/ShareService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/s;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/s;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelect(I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/s;->a:Lcom/alipay/mobile/framework/service/ShareService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/s;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/s;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareContent;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "content="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/s;->a:Lcom/alipay/mobile/framework/service/ShareService;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/s;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/alipay/mobile/framework/service/ShareService;->silentShare(Lcom/alipay/mobile/common/share/ShareContent;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
