.class public Lcom/alipay/android/mini/util/UIPropUtil;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    sput v1, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    sput v1, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-small"

    const/high16 v2, 0x4130

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "x-small"

    const/high16 v2, 0x4140

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "small"

    const/high16 v2, 0x4150

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "medium"

    const/high16 v2, 0x4170

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "large"

    const/high16 v2, 0x4180

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "x-large"

    const/high16 v2, 0x4198

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-large"

    const/high16 v2, 0x41a0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "switch"

    sget v2, Lcom/alipay/android/app/R$drawable;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "skip"

    sget v2, Lcom/alipay/android/app/R$drawable;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "white_content"

    sget v2, Lcom/alipay/android/app/R$drawable;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "gray_content"

    sget v2, Lcom/alipay/android/app/R$drawable;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "detail"

    sget v2, Lcom/alipay/android/app/R$drawable;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "tip"

    sget v2, Lcom/alipay/android/app/R$drawable;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "header_line"

    sget v2, Lcom/alipay/android/app/R$drawable;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    sget v2, Lcom/alipay/android/app/R$drawable;->F:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "footer_line"

    sget v2, Lcom/alipay/android/app/R$drawable;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "middle_line"

    sget v2, Lcom/alipay/android/app/R$drawable;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sure"

    sget v2, Lcom/alipay/android/app/R$drawable;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "page_title"

    sget v2, Lcom/alipay/android/app/R$drawable;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "dash_line"

    sget v2, Lcom/alipay/android/app/R$drawable;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "result_ok"

    sget v2, Lcom/alipay/android/app/R$drawable;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "normal"

    sget v2, Lcom/alipay/android/app/R$drawable;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hover"

    sget v2, Lcom/alipay/android/app/R$drawable;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "normal_second"

    sget v2, Lcom/alipay/android/app/R$drawable;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hover_second"

    sget v2, Lcom/alipay/android/app/R$drawable;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_second"

    sget v2, Lcom/alipay/android/app/R$drawable;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_gray"

    sget v2, Lcom/alipay/android/app/R$drawable;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_blue"

    sget v2, Lcom/alipay/android/app/R$drawable;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_normal"

    sget v2, Lcom/alipay/android/app/R$drawable;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_hover"

    sget v2, Lcom/alipay/android/app/R$drawable;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_disable"

    sget v2, Lcom/alipay/android/app/R$drawable;->I:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable"

    sget v2, Lcom/alipay/android/app/R$drawable;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "login_disable"

    sget v2, Lcom/alipay/android/app/R$drawable;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "finger_print_info"

    sget v2, Lcom/alipay/android/app/R$drawable;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "goto"

    sget v2, Lcom/alipay/android/app/R$drawable;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "error"

    sget v2, Lcom/alipay/android/app/R$drawable;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "back"

    sget v2, Lcom/alipay/android/app/R$drawable;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "mini_fullscreen_switch"

    sget v2, Lcom/alipay/android/app/R$drawable;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hui"

    sget v2, Lcom/alipay/android/app/R$drawable;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "gou"

    sget v2, Lcom/alipay/android/app/R$drawable;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "red_dot"

    sget v2, Lcom/alipay/android/app/R$drawable;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "info"

    sget v2, Lcom/alipay/android/app/R$drawable;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "icon_camera"

    sget v2, Lcom/alipay/android/app/R$drawable;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "inputGroup"

    sget v2, Lcom/alipay/android/app/R$drawable;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "help"

    sget v2, Lcom/alipay/android/app/R$drawable;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "three_point"

    sget v2, Lcom/alipay/android/app/R$drawable;->K:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/alipay/android/app/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$color;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v2, v0, [I

    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget v0, v2, v1

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->f(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;I)I
    .locals 2

    const/4 v0, -0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    int-to-float v0, p2

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->j(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-lez v1, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;[I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->j(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-lez v1, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 10

    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v5, v3, [I

    move v1, v2

    move v3, v4

    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_2

    aget-object v6, p0, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v3, "rgb"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    move v3, v2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    invoke-static {v6}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    goto :goto_2

    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v4

    invoke-static {v6}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v8

    invoke-static {v6}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    move v3, v2

    goto :goto_2

    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    invoke-static {v6}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x59t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    sget v0, Lcom/alipay/android/app/R$dimen;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v2, 0xf0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-static {p1, p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "local"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    array-length v6, p1

    move v4, v1

    move v0, v5

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v7, p1, v4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v0, "normal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "hover"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v9, [I

    fill-array-data v0, :array_1

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v9, [I

    fill-array-data v0, :array_2

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "disable"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v5, [I

    const v8, -0x101009e

    aput v8, v0, v1

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_5
    move-object v0, v3

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x59t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 1

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    sget v0, Lcom/alipay/android/app/R$id;->C:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/window/IFormShower;Z)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;I)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "\u786e\u5b9a\u9000\u51fa\u652f\u4ed8\uff1f"

    :goto_0
    sget v0, Lcom/alipay/android/app/R$string;->s:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\u662f"

    new-array v4, v6, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->d:Lcom/alipay/android/mini/event/ActionType;

    aput-object v0, v4, v7

    const-string/jumbo v5, "\u5426"

    new-array v6, v6, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->B:Lcom/alipay/android/mini/event/ActionType;

    aput-object v0, v6, v7

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    return-void

    :cond_2
    move-object v2, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/alipay/android/app/R$style;->c:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$layout;->e:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$id;->I:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/mini/util/f;

    invoke-direct {v3, v0}, Lcom/alipay/android/mini/util/f;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Lcom/alipay/android/mini/uielement/ElementAction;[Ljava/lang/String;Lcom/alipay/android/mini/window/IUIForm;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/android/mini/util/g;

    invoke-direct {v1, p3, p1}, Lcom/alipay/android/mini/util/g;-><init>(Lcom/alipay/android/mini/window/IUIForm;[Lcom/alipay/android/mini/uielement/ElementAction;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/alipay/android/app/R$string;->z:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    sget v1, Lcom/alipay/android/app/R$string;->A:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/mini/util/i;

    invoke-direct {v2, p1, p0, p2}, Lcom/alipay/android/mini/util/i;-><init>([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/mini/window/IUIForm;Ljava/lang/String;)V
    .locals 9

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/alipay/android/app/R$string;->z:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/android/mini/util/h;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/mini/util/h;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/android/mini/window/IUIForm;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 3

    new-instance v0, Lcom/alipay/android/mini/util/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/util/j;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 2

    const/high16 v1, 0x4000

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "local:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->f(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/widget/BaseTarget;->a(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestBuilder;->a(Lcom/squareup/picasso/Target;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/alipay/android/app/widget/BaseTarget;->a()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v1, v0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-char v5, v3, v4

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-char v5, v3, v4

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v2, "^(\\d)\\1+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x3

    const-string/jumbo v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;I)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-float v0, p2

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->j(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_3
    if-nez v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static c(Ljava/lang/String;)F
    .locals 2

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/app/Activity;)I
    .locals 7

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    sget v0, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    :goto_0
    div-float v0, v1, v0

    const v2, 0x3f19999a

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f60

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    sub-float v2, v0, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    sget v2, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    int-to-float v2, v2

    sub-float/2addr v0, v5

    const/high16 v3, 0x4040

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    float-to-int v0, v1

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    :cond_0
    sget v0, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    return v0

    :cond_1
    const/high16 v0, 0x43f0

    sub-float v0, v1, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    const/high16 v2, 0x438f

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->a:I

    goto :goto_1

    :cond_2
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)[I
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x3fc0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/android/app/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v5

    aput v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static e(Landroid/app/Activity;)I
    .locals 4

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x4160

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x4220

    mul-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$dimen;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v2, v0, v1

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->f(Landroid/app/Activity;)I

    move-result v3

    if-le v2, v3, :cond_0

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    :cond_0
    sget v0, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    return v0
.end method

.method public static e(Ljava/lang/String;)[I
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x3fc0

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/android/app/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Landroid/content/Context;F)I

    move-result v5

    aput v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static f(Landroid/app/Activity;)I
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    sget v0, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$dimen;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    sub-float v2, v1, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    sget v2, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    int-to-float v2, v2

    sub-float/2addr v1, v4

    const/high16 v3, 0x4040

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    :cond_0
    sget v0, Lcom/alipay/android/mini/util/UIPropUtil;->b:I

    return v0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/alipay/android/app/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/alipay/android/mini/util/UIPropUtil;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "^(\\d)\\1+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static j(Ljava/lang/String;)F
    .locals 2

    const-string/jumbo v0, "%"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    goto :goto_0
.end method
