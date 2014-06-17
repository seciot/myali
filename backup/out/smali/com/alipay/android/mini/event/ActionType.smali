.class public final enum Lcom/alipay/android/mini/event/ActionType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum A:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum B:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum C:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum D:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum E:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum F:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum G:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum H:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum I:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum J:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum K:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum L:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum M:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum a:Lcom/alipay/android/mini/event/ActionType;

.field private static final synthetic ab:[Lcom/alipay/android/mini/event/ActionType;

.field public static final enum b:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum c:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum d:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum e:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum f:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum g:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum h:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum i:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum j:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum k:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum l:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum m:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum n:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum o:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum p:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum q:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum r:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum s:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum t:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum u:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum v:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum w:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum x:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum y:Lcom/alipay/android/mini/event/ActionType;

.field public static final enum z:Lcom/alipay/android/mini/event/ActionType;


# instance fields
.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Lorg/json/JSONObject;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Submit"

    const-string/jumbo v2, "submit"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->a:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "None"

    const-string/jumbo v2, "js://none"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->b:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Cancel"

    const-string/jumbo v2, "js://cancle"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->c:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Exit"

    const-string/jumbo v2, "js://exit"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->d:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "SwitchFull"

    const-string/jumbo v2, "js://fullpay"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->e:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Fullpay"

    const/4 v2, 0x5

    const-string/jumbo v3, "js://fullpay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->f:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "DisableConfirm"

    const/4 v2, 0x6

    const-string/jumbo v3, "js://disable_submit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->g:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Refresh"

    const/4 v2, 0x7

    const-string/jumbo v3, "js://refresh"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->h:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Redo"

    const/16 v2, 0x8

    const-string/jumbo v3, "js://redo"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->i:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Back"

    const/16 v2, 0x9

    const-string/jumbo v3, "js://back"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->j:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "SwitchHome"

    const/16 v2, 0xa

    const-string/jumbo v3, "js://home"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->k:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "SwitchHint"

    const/16 v2, 0xb

    const-string/jumbo v3, "js://switch"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->l:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "ReadSms"

    const/16 v2, 0xc

    const-string/jumbo v3, "js://readsms"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->m:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Toast"

    const/16 v2, 0xd

    const-string/jumbo v3, "js://toast"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->n:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Success"

    const/16 v2, 0xe

    const-string/jumbo v3, "js://success"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->o:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Guide"

    const/16 v2, 0xf

    const-string/jumbo v3, "js://guide"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->p:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Update"

    const/16 v2, 0x10

    const-string/jumbo v3, "js://update"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->q:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "OpenWeb"

    const/16 v2, 0x11

    const-string/jumbo v3, "js://openweb"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->r:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Confirm"

    const/16 v2, 0x12

    const-string/jumbo v3, "js://confirm"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->s:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "ValueChanged"

    const/16 v2, 0x13

    const-string/jumbo v3, "js://valueChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->t:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Count"

    const/16 v2, 0x14

    const-string/jumbo v3, "js://count"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->u:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "ReadBankCard"

    const/16 v2, 0x15

    const-string/jumbo v3, "js://readBankCard"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->v:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Dismiss"

    const/16 v2, 0x16

    const-string/jumbo v3, "js://dismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->w:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "FindPwd"

    const/16 v2, 0x17

    const-string/jumbo v3, "js://findpwd"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->x:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Finish"

    const/16 v2, 0x18

    const-string/jumbo v3, "js://finish"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->y:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "WapPay"

    const/16 v2, 0x19

    const-string/jumbo v3, "js://wappay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->z:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "ReturnData"

    const/16 v2, 0x1a

    const-string/jumbo v3, "js://returnData"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->A:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "LocalDismiss"

    const/16 v2, 0x1b

    const-string/jumbo v3, "js://localDismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->B:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Flush"

    const/16 v2, 0x1c

    const-string/jumbo v3, "js://flush"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->C:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Alert"

    const/16 v2, 0x1d

    const-string/jumbo v3, "js://alert"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->D:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "OpenUri"

    const/16 v2, 0x1e

    const-string/jumbo v3, "js://openUri"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->E:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Sheet"

    const/16 v2, 0x1f

    const-string/jumbo v3, "js://sheet"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->F:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Pick"

    const/16 v2, 0x20

    const-string/jumbo v3, "js://pick"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->G:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "ChangeSubmitValue"

    const/16 v2, 0x21

    const-string/jumbo v3, "js://changeSubmitValue"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->H:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "ChangeHint"

    const/16 v2, 0x22

    const-string/jumbo v3, "js://changeHint"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->I:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "ShowSafeCode"

    const/16 v2, 0x23

    const-string/jumbo v3, "js://showSafeCode"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->J:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "OpenMenu"

    const/16 v2, 0x24

    const-string/jumbo v3, "js://openmenu"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->K:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "Certificate"

    const/16 v2, 0x25

    const-string/jumbo v3, "js://certificate"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->L:Lcom/alipay/android/mini/event/ActionType;

    new-instance v0, Lcom/alipay/android/mini/event/ActionType;

    const-string/jumbo v1, "tel"

    const/16 v2, 0x26

    const-string/jumbo v3, "js://tel"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/mini/event/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->M:Lcom/alipay/android/mini/event/ActionType;

    const/16 v0, 0x27

    new-array v0, v0, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->a:Lcom/alipay/android/mini/event/ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->b:Lcom/alipay/android/mini/event/ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->c:Lcom/alipay/android/mini/event/ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->d:Lcom/alipay/android/mini/event/ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->e:Lcom/alipay/android/mini/event/ActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->f:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->g:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->h:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->i:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->j:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->k:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->l:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->m:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->n:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->o:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->p:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->q:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->r:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->s:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->t:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->u:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->v:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->w:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->x:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->y:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->z:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->A:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->B:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->C:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->D:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->E:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->F:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->G:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->H:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->I:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->J:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->K:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->L:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->M:Lcom/alipay/android/mini/event/ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/mini/event/ActionType;->ab:[Lcom/alipay/android/mini/event/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/mini/event/ActionType;->N:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;
    .locals 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_0
    if-nez v7, :cond_0

    new-array v0, v3, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->a:Lcom/alipay/android/mini/event/ActionType;

    aput-object v1, v0, v4

    :goto_1
    return-object v0

    :cond_0
    array-length v0, v7

    new-array v2, v0, [Lcom/alipay/android/mini/event/ActionType;

    array-length v8, v7

    move v5, v4

    move v6, v4

    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v9, v7, v5

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->a:Lcom/alipay/android/mini/event/ActionType;

    invoke-static {}, Lcom/alipay/android/mini/event/ActionType;->values()[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v10

    array-length v11, v10

    move v3, v4

    :goto_3
    if-ge v3, v11, :cond_4

    aget-object v0, v10, v3

    iget-object v12, v0, Lcom/alipay/android/mini/event/ActionType;->N:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_4
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->O:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->P:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->h()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->Q:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->R:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->S:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->T:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->k()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/android/mini/event/ActionType;->U:Z

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->l()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/android/mini/event/ActionType;->V:Z

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->m()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/android/mini/event/ActionType;->W:Z

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->X:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->Z:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementAction;->a()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/mini/event/ActionType;->aa:Lorg/json/JSONObject;

    aput-object v0, v2, v6

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    new-array v0, v3, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v1, Lcom/alipay/android/mini/event/ActionType;->a:Lcom/alipay/android/mini/event/ActionType;

    aput-object v1, v0, v4

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/mini/event/ActionType;
    .locals 1

    const-class v0, Lcom/alipay/android/mini/event/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/event/ActionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/mini/event/ActionType;
    .locals 1

    sget-object v0, Lcom/alipay/android/mini/event/ActionType;->ab:[Lcom/alipay/android/mini/event/ActionType;

    invoke-virtual {v0}, [Lcom/alipay/android/mini/event/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/mini/event/ActionType;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->aa:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->O:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->Q:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/event/ActionType;->U:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/event/ActionType;->V:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/mini/event/ActionType;->W:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/event/ActionType;->R:Ljava/lang/String;

    return-object v0
.end method
