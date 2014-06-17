.class final Lcom/alipay/mobile/onsitepay/utils/b;
.super Ljava/lang/Object;
.source "ShareSavePicThireBtnActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ShareService;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;Lcom/alipay/mobile/framework/service/ShareService;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelect(I)V
    .locals 4
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/alipay/mobile/common/share/ShareContent;

    invoke-direct {v1}, Lcom/alipay/mobile/common/share/ShareContent;-><init>()V

    .line 156
    sparse-switch p1, :sswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 158
    :sswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "SMS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "SMS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "SMS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto :goto_0

    .line 167
    :sswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "SINA_WEIBO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "SINA_WEIBO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "SINA_WEIBO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    .line 176
    :sswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x10

    invoke-static {v2, v3}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    .line 185
    :sswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG_FEED"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x100

    invoke-static {v2, v3}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "LAIWANG"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    .line 194
    :sswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    .line 203
    :sswitch_5
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND_CIRCLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND_CIRCLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "WEIXIN_FRIEND_CIRCLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    .line 212
    :sswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "COPY_LINK"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v2, v3}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "COPY_LINK"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->b:Ljava/util/Map;

    const-string/jumbo v2, "COPY_LINK"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/b;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/b;->a:Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    goto/16 :goto_0

    .line 156
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
