.class final Lcom/alipay/mobile/alipassapp/ui/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/cp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/cp;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->b:Lcom/alipay/mobile/alipassapp/ui/cp;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->b:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->b:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->a:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->b:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Ljava/util/Date;)Ljava/util/Date;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->b:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cq;->b:Lcom/alipay/mobile/alipassapp/ui/cp;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    :cond_0
    return-void
.end method
