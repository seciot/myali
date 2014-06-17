.class final Lcom/alipay/mobile/onsitepay/payer/sound/h;
.super Ljava/lang/Object;
.source "SendSoundViewActivity.java"

# interfaces
.implements Lcom/alipay/mobile/onsitepay/payer/sound/ag;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s()V

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;->userList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set lbs frients count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;->userList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;

    .line 166
    iget-object v3, v0, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->account:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v3, v3, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->q:[Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->showNearbyInfo(Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;)V

    .line 170
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 204
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->u()V

    .line 207
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->t()V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->waveRetry()V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->d(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/h;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s()V

    .line 200
    return-void
.end method
