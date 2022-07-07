use crate as bevy_reflect;
use crate::prelude::ReflectDefault;
use crate::{ReflectDeserialize, ReflectSerialize};
use bevy_reflect_derive::{impl_reflect_value, impl_from_reflect_value};
use bevy_utils::Uuid;

impl_reflect_value!(Uuid(Debug,PartialEq,Serialize,Deserialize,Default));
impl_from_reflect_value!(Uuid);