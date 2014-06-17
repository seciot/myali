.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ShareService;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;Lcom/alipay/mobile/framework/service/ShareService;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    iput-object p3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelect(I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/mobile/common/share/ShareContent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/share/ShareContent;-><init>()V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "SMS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "SMS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "SMS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "SINA_WEIBO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "SINA_WEIBO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "SINA_WEIBO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x10

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG_FEED"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x100

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND_CIRCLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND_CIRCLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND_CIRCLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "COPY_LINK"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "COPY_LINK"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->b:Ljava/util/Map;

    const-string/jumbo v2, "COPY_LINK"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_4
        0x1000 -> :sswitch_5
        0x10000 -> :sswitch_6
        0x100000 -> :sswitch_2
        0x1000000 -> :sswitch_3
    .end sparse-switch
.end method
