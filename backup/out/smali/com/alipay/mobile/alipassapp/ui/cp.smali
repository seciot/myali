.class final Lcom/alipay/mobile/alipassapp/ui/cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-array v2, p4, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->j(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/cr;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/ui/cr;-><init>(Lcom/alipay/mobile/alipassapp/ui/cp;)V

    invoke-virtual {v1, v2, p3, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->g(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/16 v4, 0x18

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TRAVEL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->g(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->travel_remind_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSet()J

    move-result-wide v0

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    long-to-int v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->h(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v7}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSupportTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v6}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->h(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x36ee80

    div-long/2addr v0, v6

    long-to-int v0, v0

    if-gez v0, :cond_2

    move v1, v3

    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-le v2, v0, :cond_4

    add-int/lit8 v0, v1, -0x1

    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-direct {p0, v2, v5, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/cp;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->g(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    if-gtz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-le v0, v4, :cond_6

    move v1, v4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->c(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Calendar;

    move-result-object v3

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/cp;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Calendar;

    move-result-object v2

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/cq;

    invoke-direct {v4, p0, v3}, Lcom/alipay/mobile/alipassapp/ui/cq;-><init>(Lcom/alipay/mobile/alipassapp/ui/cp;Ljava/util/Calendar;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_1
.end method
