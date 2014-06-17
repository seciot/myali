.class public final Lcom/alipay/mobile/longlink/c/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/longlink/c/a;->a:Z

    sput v1, Lcom/alipay/mobile/longlink/c/a;->b:I

    sput v1, Lcom/alipay/mobile/longlink/c/a;->c:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/longlink/c/a;->d:I

    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/longlink/c/a;->e:I

    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/longlink/c/a;->f:I

    const/4 v0, 0x5

    sput v0, Lcom/alipay/mobile/longlink/c/a;->g:I

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LongLink_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Lcom/alipay/mobile/longlink/c/a;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/alipay/mobile/longlink/c/a;->f:I

    sput v0, Lcom/alipay/mobile/longlink/c/a;->b:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/alipay/mobile/longlink/c/a;->c:I

    sput v0, Lcom/alipay/mobile/longlink/c/a;->b:I

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/longlink/c/a;->b:I

    if-lt v0, p0, :cond_0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
