.class final Lcom/alipay/mobile/security/gesture/component/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/m;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field final synthetic b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

.field final synthetic c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-object p3, p0, Lcom/alipay/mobile/security/gesture/component/e;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/alipay/mobile/security/gesture/component/LockView;->MINSELECTED:I

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userInfo"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/util/SHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/e;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/k;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/component/k;->a(ZZZ)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLockDone \u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/e;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    #calls: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$100(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/e;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/e;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$200(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    #getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$000(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/e;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$300(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/e;->c:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    #getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$400(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    goto :goto_1
.end method
