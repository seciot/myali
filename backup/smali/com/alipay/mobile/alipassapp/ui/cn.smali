.class final Lcom/alipay/mobile/alipassapp/ui/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->b(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSwitch()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cn;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    goto :goto_0
.end method
